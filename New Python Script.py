with open("dump_14_1843902.lua", "r", encoding="utf-8", errors="ignore") as f:
    code = f.read()

# Tách dòng cơ bản sau dấu chấm phẩy và từ khóa khối
formatted = (
    code.replace(";", ";\n")
        .replace(" do ", " do\n")
        .replace(" then ", " then\n")
        .replace(" else ", "\nelse\n")
        .replace(" end", "\nend")
)

with open("dump_14_formatted.lua", "w", encoding="utf-8") as f:
    f.write(formatted)
print("Done! Saved to dump_14_formatted.lua")