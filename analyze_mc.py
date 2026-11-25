import json
import re

AST_FILE = "ast.json"
LUA_FILE = "dump_14_1843902.lua"
OUT_DISPATCH = "mc_dispatchers.lua"
OUT_REPORT = "mc_call_graph.txt"

with open(AST_FILE, "r", encoding="utf-8", errors="ignore") as f:
    ast_data = json.load(f)

with open(LUA_FILE, "r", encoding="utf-8", errors="ignore") as f:
    lua_src = f.read()

def slice_loc(loc_str):
    # Định dạng location của luau-ast: "line,startCol - line,endCol"
    try:
        _, right = loc_str.split("-")
        _, end_col = right.strip().split(",")
        return int(end_col)
    except Exception:
        return None

def get_start_col(loc_str):
    try:
        left, _ = loc_str.split("-")
        _, start_col = left.strip().split(",")
        return int(start_col)
    except Exception:
        return None

def find_setmetatable_table(node):
    if isinstance(node, dict):
        if node.get("type") == "AstExprCall":
            func = node.get("func", {})
            if func.get("type") == "AstExprGlobal" and func.get("global") == "setmetatable":
                args = node.get("args", [])
                if args and args[0].get("type") == "AstExprTable":
                    return args[0]
        for v in node.values():
            res = find_setmetatable_table(v)
            if res:
                return res
    elif isinstance(node, list):
        for item in node:
            res = find_setmetatable_table(item)
            if res:
                return res
    return None

def collect_called_ids(node, found_ids):
    # Tìm các chỉ mục số dạng tbl[1234] hoặc key số trong AST
    if isinstance(node, dict):
        if node.get("type") == "AstExprIndexExpr":
            idx = node.get("index", {})
            if idx.get("type") == "AstExprConstantNumber":
                val = idx.get("value")
                if isinstance(val, (int, float)) and int(val) == val and val > 0:
                    found_ids.add(int(val))
        for v in node.values():
            collect_called_ids(v, found_ids)
    elif isinstance(node, list):
        for item in node:
            collect_called_ids(item, found_ids)

def collect_strings(node, found_strs):
    if isinstance(node, dict):
        if node.get("type") == "AstExprConstantString":
            s = node.get("value", "")
            if isinstance(s, str) and 2 <= len(s) <= 50:
                found_strs.append(s)
        for v in node.values():
            collect_strings(v, found_strs)
    elif isinstance(node, list):
        for item in node:
            collect_strings(item, found_strs)

def format_lua_block(text):
    res = text.replace(";", ";\n")
    res = re.sub(r"\b(then|do|else)\b", r"\1\n", res)
    res = re.sub(r"\b(elseif|end|until)\b", r"\n\1", res)
    lines = [ln.strip() for ln in res.splitlines() if ln.strip()]
    out = []
    indent = 0
    for ln in lines:
        if re.match(r"^(end|else|elseif|until)\b", ln):
            indent = max(0, indent - 1)
        out.append("    " * indent + ln)
        if re.search(r"\b(then|do|else|repeat)\s*$", ln) or re.match(r"^(local\s+)?function\b", ln):
            if not re.search(r"\bend\s*;?$", ln):
                indent += 1
    return "\n".join(out)

root_table = find_setmetatable_table(ast_data.get("root"))
if not root_table:
    raise RuntimeError("Khong tim thay bang setmetatable trong ast.json")

items = root_table.get("items", [])
numeric_entries = []
named_entries = []

for it in items:
    key = it.get("key", {})
    val = it.get("value", {})
    k_type = key.get("type")
    if k_type == "AstExprConstantNumber":
        numeric_entries.append((key.get("value"), it))
    elif k_type == "AstExprConstantString":
        named_entries.append((key.get("value"), it))

print(f"Tong so entry trong bang: {len(items)} (So: {len(numeric_entries)}, Chuoi/Dispatcher: {len(named_entries)})")

dispatch_blocks = []
report_lines = []

for name, it in named_entries:
    val = it.get("value", {})
    loc = val.get("location", "")
    s_col = get_start_col(loc)
    e_col = slice_loc(loc)
    raw_fn = lua_src[s_col:e_col] if (s_col is not None and e_col is not None) else ""

    called_ids = set()
    collect_called_ids(val, called_ids)

    strs = []
    collect_strings(val, strs)
    unique_strs = list(dict.fromkeys(strs))[:12]

    sorted_ids = sorted(called_ids)
    dispatch_blocks.append((name, sorted_ids, unique_strs, format_lua_block(raw_fn)))

    report_lines.append(f"=== DISPATCHER KEY: {name} ===")
    report_lines.append(f"  So luong ID ham con tham chieu ({len(sorted_ids)}): {sorted_ids}")
    report_lines.append(f"  Strings: {unique_strs}")
    report_lines.append("")

# Ưu tiên đưa 'mc' lên đầu nếu có
dispatch_blocks.sort(key=lambda x: (0 if x[0] == "mc" else 1, x[0]))

with open(OUT_DISPATCH, "w", encoding="utf-8") as f:
    f.write(f"-- Tong hop {len(dispatch_blocks)} ham dieu phoi (dispatcher) tu {LUA_FILE}\n\n")
    for name, sorted_ids, unique_strs, formatted in dispatch_blocks:
        f.write(f"-- [[ DISPATCHER: {name} ]] Referenced IDs: {sorted_ids}\n")
        f.write(f"-- Strings: {unique_strs}\n")
        f.write(f"[\"{name}\"] = {formatted}\n\n" + ("=" * 65) + "\n\n")

with open(OUT_REPORT, "w", encoding="utf-8") as f:
    f.write("\n".join(report_lines))

print(f"Da xuat: {OUT_DISPATCH} va {OUT_REPORT}")