rule ABCDE_xor
{
    strings:
        $text_string = "ABCDE" xor

    condition:
        $text_string
}

rule ABCDE_range
{
    strings:
        $text_string = "ABCDE" xor(0x00-0x05)

    condition:
        $text_string
}