import random
import yara

YARA_RULE_DIR = "/yaramaster/yararules"
rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yar")

# Callback関数を定義
def scan_callback(data):
    i = random.randint(1,2)
    if i == 1:
        print("Continue!")
        return yara.CALLBACK_CONTINUE
    else:
        print("Abort!")
        return yara.CALLBACK_ABORT

# YARAルールのコンパイル
rules = yara.compile(filepath=rule_file_path)

# Callback関数を指定してYARAスキャン
matches = rules.match(filepath="/yaramaster/test.txt", callback=scan_callback)