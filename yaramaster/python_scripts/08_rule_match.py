import yara
YARA_RULE_DIR = "/yaramaster/yararules"
rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yar")

# YARAルールのコンパイル
rules = yara.compile(filepath=rule_file_path)
print("Type: rules is {}".format(type(rules)))

# ファイルに対してYARAスキャン
matches = rules.match(filepath="/yaramaster/test.txt")
print("Scan target is {}".format("/yaramaster/test.txt"))
print("==> Match result is {}".format(matches[0].rule))

# テキストに対してYARAスキャン
matches = rules.match(data="This is Hello, world! text.")
print("Scan target is {}".format("Raw strings"))
print("==> Match result is {}".format(matches[0].rule))

# スキャン対象の引数を複数入力した場合は、filepath>data>pidの順に評価され1つ目に入力された引数以外は無視される
"""
matches = rules.match(filepath="/yaramaster/test.txt", (data="This is Good Night, world! text.")
"""