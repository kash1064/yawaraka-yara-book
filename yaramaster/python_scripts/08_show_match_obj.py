import pprint
import yara

YARA_RULE_DIR = "/yaramaster/yararules"
rule_file_path = "{}/{}".format(YARA_RULE_DIR, "08_show_match_obj.yar")

# 名前空間付きのYARAルールのコンパイル
rules = yara.compile(filepaths={"sample_namespace" : rule_file_path})

# YARAスキャン後に、Matchオブジェクトの中身を出力
matches = rules.match(filepath="/yaramaster/test.txt")
match = matches[0]
print("match.rule is {} \n  Type is {}".format(match.rule, type(match.rule)))
print("match.rule is {} \n  Type is {}".format(match.namespace, type(match.namespace)))
print("match.rule is {} \n  Type is {}".format(match.tags, type(match.tags)))
print("match.rule is {} \n  Type is {}".format(match.meta, type(match.meta)))
print("match.rule is {} \n  Type is {}".format(match.strings, type(match.strings)))
