rule HelloWorld
{
    strings:
        $text_string = "HELLO, WORLD!" nocase

    condition:
        $text_string
}

rule HelloWorld_wide
{
    strings:
        $text_string = "HELLO, WORLD!" nocase wide

    condition:
        $text_string
}

rule HelloWorld_wide_ascii
{
    strings:
        $text_string = "HELLO, WORLD!" nocase wide ascii

    condition:
        $text_string
}