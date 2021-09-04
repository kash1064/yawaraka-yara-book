import yara
YARA_RULE_DIR = "/yaramaster/yararules"
COMPILED_RULE_DIR = "/yaramaster/yararule_compiled"

rule_file_path = "{}/{}".format(YARA_RULE_DIR, "02_strings_and_condition.yar")

# YARAルールのコンパイル
rules = yara.compile(filepath=rule_file_path)
print("Type: rules is {}".format(type(rules)))

# コンパイル済みルールをファイルパスを指定して08_rule_saved_1.yarcとして保存
compiled_file_path1 = "{}/{}".format(COMPILED_RULE_DIR, "08_rule_saved_1.yarc")
rules.save(filepath=compiled_file_path1)
print("Saved! : {}".format(compiled_file_path1))

# コンパイル済みルールをファイルオブジェクトに08_rule_saved_2.yarcとして保存
compiled_file_path2 = "{}/{}".format(COMPILED_RULE_DIR, "08_rule_saved_2.yarc")
with open(compiled_file_path2, "wb") as compiled_file_obj:
    rules.save(file=compiled_file_obj)
print("Saved! : {}".format(compiled_file_path2))