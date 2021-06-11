rule HelloYARA
{
    strings:
        $text_string = "HelloYARA"

    condition:
        $text_string
}