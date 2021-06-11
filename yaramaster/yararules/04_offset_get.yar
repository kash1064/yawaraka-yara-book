rule HellGet_1
{
    strings:
        $hello = "Hello"

    condition:
        @hello[1] == 0x1140
}

rule HellGet_2
{
    strings:
        $hello = "Hello"

    condition:
		// conditionセクションで定義するアドレス部分は、10進数で定義することも可能です
        @hello[2] == 4416
}