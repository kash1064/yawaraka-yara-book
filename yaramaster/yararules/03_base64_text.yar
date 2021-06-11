rule base64_text
{
    strings:
        $text_string = "This program cannot" base64

    condition:
        $text_string
}