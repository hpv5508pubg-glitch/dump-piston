"""Structural deobfuscator for dump_14_1843902.lua.

Does NOT pretend to reverse the VM bytecode. It makes the dump readable:
  - gives every local/parameter a unique name (kills the massive `z` shadowing)
  - pretty-prints tokens without breaking strings
  - annotates each top-level numeric entry with its strings + numeric refs
"""
import re
import sys

KEYWORDS = {
    'and', 'break', 'do', 'else', 'elseif', 'end', 'false', 'for',
    'function', 'if', 'in', 'local', 'nil', 'not', 'or', 'repeat',
    'return', 'then', 'true', 'until', 'while', 'continue', 'type',
    'typeof', 'export', 'self',
}
SYMBOLS = ('...', '..', '==', '~=', '<=', '>=', '::', '->')


def tokenize(src):
    toks = []
    i, n = 0, len(src)
    while i < n:
        c = src[i]
        if c.isspace():
            i += 1
            continue
        if src.startswith('--', i):
            if src.startswith('--[[', i):
                j = src.find(']]', i + 4)
                j = n if j < 0 else j + 2
            else:
                j = src.find('\n', i)
                j = n if j < 0 else j + 1
            toks.append(('comment', src[i:j]))
            i = j
            continue
        m = re.match(r'\[(=*)\[', src[i:])
        if m:
            close = ']' + m.group(1) + ']'
            start = i + len(m.group(0))
            j = src.find(close, start)
            j = n if j < 0 else j + len(close)
            toks.append(('string', src[i:j]))
            i = j
            continue
        if c in ('"', "'"):
            quote, j = c, i + 1
            while j < n:
                if src[j] == '\\':
                    j += 2
                    continue
                if src[j] == quote:
                    j += 1
                    break
                j += 1
            toks.append(('string', src[i:j]))
            i = j
            continue
        if c.isdigit() or (c == '.' and i + 1 < n and src[i + 1].isdigit()):
            m = re.match(r'\d+(?:\.\d*)?(?:[eE][+-]?\d+)?|\.\d+(?:[eE][+-]?\d+)?', src[i:])
            toks.append(('number', m.group(0)))
            i += len(m.group(0))
            continue
        if c.isalpha() or c == '_':
            m = re.match(r'[A-Za-z_][A-Za-z0-9_]*', src[i:])
            toks.append(('ident', m.group(0)))
            i += len(m.group(0))
            continue
        for op in SYMBOLS:
            if src.startswith(op, i):
                toks.append(('sym', op))
                i += len(op)
                break
        else:
            toks.append(('sym', c))
            i += 1
    return toks


class Renamer:
    def __init__(self):
        self.scopes = [{}]
        self.counter = 0
        self.pending_local = None
        self.pending_for = None
        self.pending_block = False
        self.pending_func_params = None

    def fresh(self):
        self.counter += 1
        return 'v%d' % self.counter

    def declare(self, name):
        new = self.fresh()
        self.scopes[-1][name] = new
        return new

    def lookup(self, name):
        for scope in reversed(self.scopes):
            if name in scope:
                return scope[name]
        return None

    def close_scope(self):
        if len(self.scopes) > 1:
            self.scopes.pop()

    def parse_params(self, toks, idx):
        """idx points at '('. Returns (new index after ')', list of param tokens)."""
        assert toks[idx][1] == '('
        depth = 0
        params = []
        j = idx
        while j < len(toks):
            text = toks[j][1]
            if text == '(':
                depth += 1
            elif text == ')':
                depth -= 1
                if depth == 0:
                    return j + 1, params
            elif depth == 1 and toks[j][0] == 'ident' and text not in KEYWORDS:
                params.append(j)
            j += 1
        return j, params

    def process(self, toks):
        out = []
        i = 0
        while i < len(toks):
            kind, text = toks[i]

            if kind == 'ident' and text == 'local':
                self.pending_local = []
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text == 'function':
                j = i + 1
                # skip an optional function name / method chain
                while j < len(toks) and toks[j][1] != '(':
                    if toks[j][0] == 'ident' and self.pending_local is not None:
                        self.declare(toks[j][1])
                        self.pending_local = None
                    j += 1
                if j < len(toks) and toks[j][1] == '(':
                    j, params = self.parse_params(toks, j)
                    scope = {}
                    for p in params:
                        scope[toks[p][1]] = self.fresh()
                    self.scopes.append(scope)
                    # rename the parameter tokens themselves
                    for p in params:
                        toks[p] = ('ident', scope[toks[p][1]])
                    self.pending_func_params = len(self.scopes) - 1
                self.pending_local = None
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text in ('for', 'while'):
                self.pending_for = [] if text == 'for' else None
                self.pending_block = True
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text == 'if':
                self.scopes.append({})
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text == 'repeat':
                self.scopes.append({})
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text == 'do':
                if self.pending_block:
                    scope = {}
                    if self.pending_for:
                        for nm, new in self.pending_for:
                            scope[nm] = new
                    self.scopes.append(scope)
                else:
                    self.scopes.append({})
                self.pending_block = False
                self.pending_for = None
                out.append((kind, text))
                i += 1
                continue

            if kind == 'ident' and text == 'end':
                out.append((kind, text))
                self.close_scope()
                i += 1
                continue

            if kind == 'ident' and text == 'until':
                out.append((kind, text))
                self.close_scope()
                i += 1
                continue

            # collect names declared by `local a, b = ...`
            if self.pending_local is not None:
                if kind == 'ident' and text not in KEYWORDS:
                    self.pending_local.append(i)
                    new = self.declare(text)
                    toks[i] = ('ident', new)
                    out.append(toks[i])
                    i += 1
                    continue
                if text in ('=', ',', ':'):
                    if text == ',':
                        out.append((kind, text))
                        i += 1
                        continue
                    self.pending_local = None
                    # fall through to normal handling of '=' / ':'
                else:
                    self.pending_local = None

            # collect loop variables: `for a, b in ...` / `for a = ...`
            if self.pending_for is not None and kind == 'ident' and text not in KEYWORDS:
                new = self.fresh()
                self.pending_for.append((text, new))
                toks[i] = ('ident', new)
                out.append(toks[i])
                i += 1
                continue

            if kind == 'ident' and text not in KEYWORDS:
                mapped = self.lookup(text)
                out.append((kind, mapped if mapped else text))
                i += 1
                continue

            out.append((kind, text))
            i += 1
        return out


def format_tokens(toks):
    lines = []
    buf = ''

    def flush():
        nonlocal buf
        s = buf.strip()
        if s:
            lines.append(s)
        buf = ''

    NO_SPACE_BEFORE = {',', ';', ')', ']', '}', '.', '(', '[', ':'}
    NO_SPACE_AFTER = {'(', '[', '{', '.', '...', ':'}
    prev = ''
    for kind, text in toks:
        if kind == 'comment':
            flush()
            lines.append(text)
            prev = ''
            continue
        if text == ';':
            buf += ';'
            flush()
            prev = ';'
            continue
        if text in ('then', 'do', 'else', 'repeat'):
            buf += (' ' if buf else '') + text
            flush()
            prev = text
            continue
        if text in ('end', 'elseif', 'until'):
            flush()
            buf = text
            prev = text
            continue
        if not buf:
            buf = text
        elif text in NO_SPACE_BEFORE or prev in NO_SPACE_AFTER:
            buf += text
        else:
            buf += ' ' + text
        prev = text
    flush()
    return '\n'.join(lines)


TAGS = (
    ('ItemMeta', 'items'),
    ('AbilityController', 'abilities'),
    ('KnitClient', 'knit/network'),
    ('ReplicatedStorage', 'replicated-storage'),
    ('RemoteEvent', 'remotes'),
    ('Raycast', 'raycast'),
    ('TweenService', 'tween'),
    ('Instance.new', 'instances'),
    ('FindFirstChild', 'instance-lookup'),
    ('getgenv', 'executor'),
    ('Vector3', 'math/vector'),
)


def guess_tag(block):
    for needle, label in TAGS:
        if needle in block:
            return label
    return ''


def annotate(src, formatted):
    """Annotate top-level numeric functions and named VM dispatchers."""
    entry_re = re.compile(r'(?:\[(\d+)\]|([A-Za-z_][A-Za-z0-9_]*))\s*=\s*function')
    info = {}
    matches = list(entry_re.finditer(src))
    for i, m in enumerate(matches):
        start = m.start()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(src)
        block = src[start:end]
        strings = list(dict.fromkeys(re.findall(r'"([^"\\]{3,40})"', block)))[:5]
        refs = sorted({int(x) for x in re.findall(r'\[(\d+)\]', block)} - ({int(m.group(1))} if m.group(1) else set()))
        info[m.group(1) or m.group(2)] = (strings, refs, guess_tag(block))

    out = []
    pos = 0
    for m in entry_re.finditer(formatted):
        out.append(formatted[pos:m.start()])
        key = m.group(1) or m.group(2)
        if key in info:
            strings, refs, tag = info[key]
            bits = []
            if tag:
                bits.append('tag: ' + tag)
            if strings:
                bits.append('strings: ' + ' | '.join(s.replace('\n', ' ') for s in strings))
            if refs:
                bits.append('refs: ' + ','.join(str(x) for x in refs[:20]))
            kind = 'ID' if m.group(1) else 'DISPATCHER'
            out.append('\n-- [%s %s] %s\n' % (kind, key, ' ; '.join(bits)))
        pos = m.start()
    out.append(formatted[pos:])
    return ''.join(out)


def main():
    src_path = sys.argv[1] if len(sys.argv) > 1 else 'dump_14_1843902.lua'
    out_path = sys.argv[2] if len(sys.argv) > 2 else 'dump_14_deobfuscated.lua'
    with open(src_path, 'r', encoding='utf-8', errors='ignore') as f:
        src = f.read()
    toks = tokenize(src)
    renamed = Renamer().process(toks)
    pretty = format_tokens(renamed)
    result = annotate(src, pretty)
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write('-- dump_14_1843902.lua -- structural deobfuscation\n')
        f.write('-- Obfuscator: Luraph v15 (Luarmor V4), method-based state-machine VM variant.\n')
        f.write('-- Locals renamed uniquely; dispatcher/function ids stay numeric.\n')
        f.write('-- This is NOT recovered source -- VM bytecode is not devirtualized.\n\n')
        f.write(result + '\n')
    print('tokens=%d output=%s bytes=%d' % (len(toks), out_path, len(result)))


if __name__ == '__main__':
    main()
