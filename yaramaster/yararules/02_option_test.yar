import "pe"

rule HelloWorld : HelloTag HelloTag2
{
    meta:
        HelloMeta = "sample meta data"

    strings:
        $text_string = "Hello, world!"

    condition:
        $text_string
}

rule GoodNightWorld : GoodNightTag
{
    strings:
        $text_string = "Good night, world!"

    condition:
        $text_string
}

rule SeeYou
{
    strings:
        $text_string = "SeeYou!"

    condition:
        $text_string
}