rule Hello_private
{
    strings:
        $text_string = "Hello" private

    condition:
        $text_string
}

rule Hello
{
    strings:
        $text_string = "Hello"

    condition:
        $text_string
}