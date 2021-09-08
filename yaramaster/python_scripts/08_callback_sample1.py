import pprint
import yara

YARA_RULE_DIR = "/yaramaster/yararules"
rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yar")

# Callback関数を定義
def scan_callback(data):
    print("===========")
    print(type(data))
    pprint.pprint(data)
    return yara.CALLBACK_CONTINUE

# YARAルールのコンパイル
rules = yara.compile(filepath=rule_file_path)

# Callback関数を指定してYARAスキャン
matches = rules.match(filepath="/yaramaster/test.txt", callback=scan_callback)