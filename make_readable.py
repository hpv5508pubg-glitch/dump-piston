"""Flatten Luraph curried closures into ordinary-looking Lua functions.

Output is a readable reconstruction, NOT recovered source: the VM dispatchers
are still there, but each numeric entry becomes `local function F_ID(...)` and
self-calls `z[ID](...)` become `F_ID(...)`.
"""
import re
import sys

from deobfuscate import KEYWORDS, Renamer, format_tokens, tokenize, TAGS, guess_tag

ENTRY = re.compile(r'(?:\[(\d+)\]|([A-Za-z_][A-Za-z0-9_]*))\s*=\s*function')


def matching_end(toks, start):
    """Index of the `end`/`until` closing the block opened at `start`."""
    depth = 0
    for i in range(start, len(toks)):
        t = toks[i][1]
        if t in ('function', 'if', 'do', 'repeat'):
            depth += 1
        elif t in ('end', 'until'):
            depth -= 1
            if depth == 0:
                return i
    return len(toks) - 1


def one_function(toks):
    """Parse `function (params) BODY end` -> (params, body)."""
    if not toks or toks[0][1] != 'function' or len(toks) < 3 or toks[1][1] != '(':
        return [], toks
    depth = 0
    close = None
    params = []
    for k in range(2, len(toks)):
        t = toks[k][1]
        if t == '(':
            depth += 1
        elif t == ')':
            if depth == 0:
                close = k
                break
            depth -= 1
        elif depth == 0 and toks[k][0] == 'ident' and t not in KEYWORDS:
            params.append(t)
    if close is None:
        return params, toks
    end = matching_end(toks, 0)
    body = toks[close + 1:end]
    while body and body[0][1] == ';':
        body = body[1:]
    return params, body


def find_return_function(body):
    """Index of `function` in a top-level `return function ... end` statement."""
    depth = 0
    for i, (_, t) in enumerate(body):
        if depth == 0 and t == 'return' and i + 1 < len(body) and body[i + 1][1] == 'function':
            return i
        if t in ('function', 'if', 'do', 'repeat'):
            depth += 1
        elif t in ('end', 'until'):
            depth -= 1
    return None


def unwrap(toks):
    """Flatten chained `return function` layers into one flat parameter list."""
    params_all, body = one_function(toks)
    for _ in range(20):
        idx = find_return_function(body)
        if idx is None:
            break
        prefix = body[:idx]
        more, inner = one_function(body[idx + 1:])
        params_all.extend(more)
        body = prefix + inner
    # keep only the last declaration of each shadowed parameter name
    ordered = []
    for p in params_all:
        if p in ordered:
            ordered.remove(p)
        ordered.append(p)
    return ordered, body


def strings_of(block):
    return list(dict.fromkeys(re.findall(r'"([^"\\]{3,40})"', block)))[:5]


def cross_refs(block):
    return sorted({int(x) for x in re.findall(r'\[(\d+)\]', block)})


def main():
    src_path = sys.argv[1] if len(sys.argv) > 1 else 'dump_14_1843902.lua'
    out_path = sys.argv[2] if len(sys.argv) > 2 else 'dump_14_readable.lua'
    with open(src_path, 'r', encoding='utf-8', errors='ignore') as f:
        src = f.read()

    matches = list(ENTRY.finditer(src))
    chunks = []
    for i, m in enumerate(matches):
        start = m.end()
        end = matches[i + 1].start() if i + 1 < len(matches) else len(src)
        block = src[m.start():end]
        fn_src = 'function' + src[start:end]
        toks = tokenize(fn_src)
        toks = Renamer().process(toks)
        params, body = unwrap(toks)

        tag = guess_tag(block)
        strs = strings_of(block)
        refs = [x for x in cross_refs(block) if x != (int(m.group(1)) if m.group(1) else -1)]

        head = ['-- F_%s' % (m.group(1) or m.group(2))]
        bits = []
        if tag:
            bits.append('tag: ' + tag)
        if strs:
            bits.append('strings: ' + ' | '.join(s.replace('\n', ' ') for s in strs))
        if refs:
            bits.append('calls: ' + ','.join('F_%d' % x for x in refs[:14]))
        if bits:
            head.append('-- ' + ' ; '.join(bits))

        param_text = ', '.join(params)
        body_text = format_tokens(body)
        # self-calls z[22](...) -> F_22(...)
        body_text = re.sub(r'\b\w+\[(\d+)\]\s*\(', lambda mm: 'F_%s(' % mm.group(1), body_text)

        chunks.append('\n'.join(head) + '\n')
        chunks.append('local function F_%s(%s)\n%s\nend\n\n'
                      % (m.group(1) or m.group(2), param_text, body_text))

    header = (
        '-- dump_14 -- readable reconstruction\n'
        '-- Luraph v15 (Luarmor V4) curried closures flattened into normal functions.\n'
        '-- F_<id> = VM function id. Cross-calls rewritten as F_<id>(...).\n'
        '-- Still a reconstruction, not original source: VM state machine remains.\n\n'
    )
    with open(out_path, 'w', encoding='utf-8') as f:
        f.write(header + ''.join(chunks))
    print('functions=%d output=%s bytes=%d' % (len(matches), out_path, sum(len(c) for c in chunks)))


if __name__ == '__main__':
    main()
