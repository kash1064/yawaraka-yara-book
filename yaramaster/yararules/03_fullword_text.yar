rule fullword_text
{
    strings:
        $text_string = "ABCDE" fullword

    condition:
        $text_string
}