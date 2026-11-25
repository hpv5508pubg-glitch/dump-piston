import re

INPUT_FILE = "dump_14_1843902.lua"
OUTPUT_FILE = "dump_14_functions.lua"

with open(INPUT_FILE, "r", encoding="utf-8", errors="ignore") as f:
    code = f.read()

# Tìm tất cả các entry dạng [1234]=function(...)
pattern = re.compile(r"\[(\d+)\]\s*=\s*function\s*\(")
matches = list(pattern.finditer(code))

print(f"Tim thay {len(matches)} ham con trong bang VM.")

# Hàm cân bằng từ khóa block để cắt chính xác điểm kết thúc `end` của mỗi function
BLOCK_OPEN = re.compile(r"\b(function|if|do|repeat)\b")
BLOCK_CLOSE = re.compile(r"\b(end|until)\b")

def extract_function_body(src, start_idx):
    # Bắt đầu từ chữ 'function'
    func_pos = src.find("function", start_idx)
    depth = 0
    pos = func_pos
    length = len(src)
    
    # Quét token theo từ khóa và chuỗi để không đếm nhầm chữ 'end'/'if' nằm trong string
    token_re = re.compile(r'"(?:\\.|[^"\\])*"|\'(?:\\.|[^\'\\])*\'|\b(function|if|do|repeat|end|until)\b')
    for m in token_re.finditer(src, func_pos):
        kw = m.group(1)
        if not kw:
            continue
        if kw in ("function", "if", "do", "repeat"):
            depth += 1
        elif kw in ("end", "until"):
            depth -= 1
            if depth == 0:
                return src[start_idx : m.end()]
    return None

def prettify_lua(snippet):
    # Xuống dòng cơ bản cho dễ đọc
    res = snippet.replace(";", ";\n")
    res = re.sub(r"\b(then|do|else)\b", r"\1\n", res)
    res = re.sub(r"\b(end)\b", r"\n\1", res)
    # Thụt lề đơn giản
    lines = [line.strip() for line in res.splitlines() if line.strip()]
    out = []
    indent = 0
    for line in lines:
        if re.match(r"^(end|else|elseif|until)\b", line):
            indent = max(0, indent - 1)
        out.append("    " * indent + line)
        if re.search(r"\b(then|do|else|repeat)\s*$", line) or re.match(r"^(\[\d+\]\s*=\s*)?(local\s+)?function\b", line):
            if not re.search(r"\bend\s*;?$", line):
                indent += 1
    return "\n".join(out)

extracted = []
for m in matches:
    func_id = int(m.group(1))
    body = extract_function_body(code, m.start())
    if body:
        # Tìm các chuỗi chữ bên trong để gắn nhãn gợi ý chức năng
        strings = re.findall(r'"([^"\\]{3,35})"', body)
        tags = ", ".join(dict.fromkeys(strings[:5]))
        extracted.append((func_id, tags, prettify_lua(body)))

extracted.sort(key=lambda x: x[0])

with open(OUTPUT_FILE, "w", encoding="utf-8") as out:
    out.write(f"-- Tong cong: {len(extracted)} ham da trich xuat tu {INPUT_FILE}\n\n")
    for func_id, tags, pretty_body in extracted:
        header = f"-- [[ FUNCTION ID: {func_id} ]] " + (f"Strings: [{tags}]" if tags else "")
        out.write(header + "\n")
        out.write(pretty_body + "\n\n" + ("-" * 60) + "\n\n")

print(f"Hoan tat! Da luu toan bo ham vao file: {OUTPUT_FILE}")