"""Readable reconstruction with semantic-ish names instead of v1/F_123.

Names are inferred heuristically from strings, property access and expression
shape. They are hints for reading, not recovered original identifiers.
"""
import re
import sys

from deobfuscate import KEYWORDS, Renamer, format_tokens, tokenize, guess_tag
from make_readable import ENTRY, one_function, find_return_function, strings_of


def snake(text):
    s = re.sub(r'[^A-Za-z0-9]+', ' ', text).strip()
    if not s:
        return ''
    parts = s.split()
    out = parts[0].lower()
    for p in parts[1:]:
        out += p[0].upper() + p[1:].lower()
    return re.sub(r'[^A-Za-z0-9]', '', out)


def name_from_expr(toks):
    """Pick a readable hint from the tokens of a local's assigned value."""
    texts = [t[1] for t in toks]
    if not texts:
        return 'value'
    # string literal -> use its content
    for kind, text in toks:
        if kind == 'string' and len(text) >= 3:
            n = snake(text.strip('"\'[['))
            if n and len(n) > 2:
                return n
    # context unpack: ctx[1], ctx[2]
    if len(texts) >= 3 and texts[1] == '[' and texts[2].isdigit():
        return 'ctx' + texts[2]
    # property access: something.Name -> name
    if len(texts) >= 3 and texts[1] == '.':
        return snake(texts[2])
    if len(texts) >= 2 and texts[0] == 'function':
        return 'callback'
    if texts[0] == '{':
        return 'table'
    if texts[0] in ('true', 'false'):
        return 'flag'
    if texts[0] == 'nil':
        return 'value'
    if texts[0] == '...':
        return 'args'
    if texts[0].isdigit():
        return 'number'
    if any(t in ('GetService', 'Instance', 'new') for t in texts[:6]):
        return 'instance'
    if '(' in texts:
        return 'result'
    return 'value'


def analyse_use(params, body):
    """Rough role of each parameter: table context, callable, or plain arg."""
    roles = {}
    for p in params:
        roles[p] = 'arg'
    for i, (kind, text) in enumerate(body):
        if kind != 'ident' or text not in roles:
            continue
        nxt = body[i + 1][1] if i + 1 < len(body) else ''
        if nxt == '[':
            roles[text] = 'ctx'
        elif nxt == '(':
            roles[text] = 'fn'
        elif nxt == ':':
            roles[text] = 'object'
    return roles


def rename_tokens(params, body):
    roles = analyse_use(params, body)
    used = set()
    mapping = {}

    def unique(base):
        base = base or 'value'
        if base not in used:
            used.add(base)
            return base
        i = 2
        while base + str(i) in used:
            i += 1
        name = base + str(i)
        used.add(name)
        return name

    for p in params:
        mapping[p] = unique({'ctx': 'context', 'fn': 'callback',
                             'object': 'object', 'arg': 'arg'}[roles[p]])

    # locals, loop variables and nested function parameters
    i = 0
    while i < len(body):
        kind, text = body[i]
        if kind == 'ident' and text == 'function' and i + 1 < len(body) and body[i + 1][1] == '(':
            j = i + 2
            depth = 0
            names = []
            while j < len(body):
                t = body[j][1]
                if t == '(':
                    depth += 1
                elif t == ')':
                    if depth == 0:
                        break
                    depth -= 1
                elif depth == 0 and body[j][0] == 'ident' and t not in KEYWORDS:
                    names.append(t)
                j += 1
            for nm in names:
                mapping[nm] = unique('arg')
            i = j + 1
            continue
        if kind == 'ident' and text == 'for':
            j = i + 1
            names = []
            while j < len(body) and body[j][0] == 'ident' and body[j][1] not in KEYWORDS:
                names.append(body[j][1])
                j += 1
                if j < len(body) and body[j][1] == ',':
                    j += 1
                    continue
                break
            for nm in names:
                mapping[nm] = unique('item')
            i = j
            continue
        if kind == 'ident' and text == 'local':
            j = i + 1
            names = []
            while j < len(body) and body[j][0] == 'ident' and body[j][1] not in KEYWORDS:
                names.append(body[j][1])
                j += 1
                if j < len(body) and body[j][1] == ',':
                    j += 1
                    continue
                break
            eq = j
            expr_end = eq
            while expr_end < len(body) and body[expr_end][1] not in (';', 'then', 'do', 'end'):
                expr_end += 1
            expr = body[eq + 1:expr_end] if eq < len(body) and body[eq][1] == '=' else []
            for nm in names:
                mapping[nm] = unique(name_from_expr(expr))
            i = j
            continue
        i += 1

    out = []
    for kind, text in body:
        if kind == 'ident' and text in mapping:
            out.append((kind, mapping[text]))
        else:
            out.append((kind, text))

    # any leftover generated names -> readable hints based on context
    extra = {}
    final = []
    for idx, (kind, text) in enumerate(out):
        if kind == 'ident' and re.fullmatch(r'v\d+', text):
            if text not in extra:
                prev = out[idx - 1][1] if idx > 0 else ''
                nxt = out[idx + 1][1] if idx + 1 < len(out) else ''
                if prev == 'in':
                    base = 'source'
                elif nxt == ',':
                    base = 'list'
                else:
                    base = 'value'
                extra[text] = unique(base)
            final.append((kind, extra[text]))
        else:
            final.append((kind, text))
    return [mapping[p] for p in params], final


def function_name(key, tag, strs, body_text):
    base = ''
    if strs:
        candidates = [s for s in strs if 3 <= len(s) <= 40]
        if candidates:
            base = snake(candidates[0])
    if not base and tag:
        base = snake(tag)
    if not base:
        low = body_text.lower()
        if '.enabled' in low or 'not(' in low:
            base = 'check'
        elif 'function' in low and 'return' in low:
            base = 'helper'
        else:
            base = 'run'
    low = body_text.lower()
    if re.search(r'\.\w+\s*=[^=]', body_text) and not re.search(r'return\s+(true|false|not)', low):
        if not base.startswith(('set', 'update', 'apply')):
            base = 'set' + base[0].upper() + base[1:]
    elif base.startswith('find') or 'FindFirstChild' in body_text:
        pass
    elif 'if ' in low and 'return' in low:
        if not base.startswith(('check', 'is', 'can', 'get')):
            base = 'get' + base[0].upper() + base[1:]
    return base[0].upper() + base[1:] if base else 'Helper'


def main():
    src_path = sys.argv[1] if len(sys.argv) > 1 else 'dump_14_1843902.lua'
    out_path = sys.argv[2] if len(sys.argv) > 2 else 'dump_14_named.lua'
    with open(src_path, 'r', encoding='utf-8', errors='ignore') as f:
        src = f.read()

    matches = list(ENTRY.finditer(src))
    used_names = set()
    chunks = []
    for i, m in enumerate(matches):
        start = m.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(src)
        block = src[m.start():end]
        toks = Renamer().process(tokenize('function' + src[start:end]))
        params, body = unwrap = None, None
        # local import to avoid circular import at module load
        from make_readable import unwrap as flatten
        params, body = flatten(toks)
        params, body = rename_tokens(params, body)

        strs = strings_of(block)
        tag = guess_tag(block)
        body_text = format_tokens(body)
        fname = function_name(m.group(1) or m.group(2), tag, strs, body_text)
        if fname in used_names:
            k = 2
            while fname + str(k) in used_names:
                k += 1
            fname = fname + str(k)
        used_names.add(fname)

        refs = sorted({int(x) for x in re.findall(r'\[(\d+)\]', block)})
        bits = []
        if tag:
            bits.append('tag: ' + tag)
        if strs:
            bits.append('strings: ' + ' | '.join(s.replace('\n', ' ') for s in strs[:4]))

        chunks.append('-- %s  [vm id %s]%s\n' % (
            fname, m.group(1) or m.group(2),
            ' ; ' + ' ; '.join(bits) if bits else ''))
        chunks.append('local function %s(%s)\n%s\nend\n\n'
                      % (fname, ', '.join(params), body_text))

    header = (
        '-- dump_14 -- readable reconstruction with inferred names\n'
        '-- Luraph v15 (Luarmor V4). Names are heuristics from strings/usage,\n'
        '-- NOT original identifiers. VM state machine is still present.\n\n'
    )
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(header + ''.join(chunks))
    print('functions=%d output=%s bytes=%d' % (len(matches), out_path, sum(len(c) for c in chunks)))


if __name__ == '__main__':
    main()
