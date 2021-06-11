rule HELLOWORLD
{
    strings:
        $text_string = "HELLO, WORLD!" nocase

    condition:
        $text_string
}

rule helloworld
{
    strings:
        $text_string = "hello, world!" nocase

    condition:
        $text_string
}