import yara
YARA_RULE_DIR = "/yaramaster/yararule_compiled"
compiled_rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yarc")

# コンパイル済みのYARAルールをロード
rules = yara.load(filepath=compiled_rule_file_path)
print("Type: rules is {}".format(type(rules)))

# load関数を用いてコンパイル済みのYARAルールファイルを読み込むことも可能
"""
with open(compiled_rule_file_path, "rb") as compiled_rule_file_obj:
    rules = yara.load(file=compiled_rule_file_obj)
    print("Type: rules is {}".format(type(rules)))
"""

# ファイルに対してYARAスキャン
matches = rules.match(filepath="/yaramaster/test.txt")
print("Type: matches is {}".format(type(matches[0])))
print("Match result is {}".format(matches[0].rule))