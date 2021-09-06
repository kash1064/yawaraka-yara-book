import yara
YARA_RULE_DIR = "/yaramaster/yararules"
rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yar")

# YARAルールのコンパイル
rules = yara.compile(filepath=rule_file_path)
print("Type: rules is {}".format(type(rules)))

# YARAルールファイルではなく、ルールスクリプトを直接定義することも可能
"""
rule_text = \"\"\"
rule HelloWorld
{
    strings:
        // 文字列を定義
        $text_string = "Hello, world!"

    condition:
        $text_string
}
\"\"\"
rules = yara.compile(source=rule_text)
print("Type: rules is {}".format(type(rules)))
"""

# ファイルに対してYARAスキャン
matches = rules.match(filepath="/yaramaster/test.txt")
print("Type: matches is {}".format(type(matches[0])))
print("Match result is {}".format(matches[0].rule))