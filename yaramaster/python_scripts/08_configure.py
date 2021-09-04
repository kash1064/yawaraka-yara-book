import yara
YARA_RULE_DIR = "/yaramaster/yararule_compiled"
compiled_rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yarc")

# コンパイル済みのYARAルールをロード
rules = yara.load(filepath=compiled_rule_file_path)
print("Type: rules is {}".format(type(rules)))

# ファイルに対してYARAスキャンし、マッチした文字列を出力
matches = rules.match(filepath="/yaramaster/test.txt")
print("Match result is {}".format(matches[0].strings))

# max_match_dataを5バイトに設定してから再スキャン
yara.set_config(max_match_data=5)
matches = rules.match(filepath="/yaramaster/test.txt")
print("Match result is {}".format(matches[0].strings))