rule CountSample1
{
    strings:
        $hello = "Hello"
        $a = "a"

    condition:
        #hello > 1 and #a == 5
}

rule CountSample2
{
    strings:
        $hello = "Hello"
        $a = "a"

    condition:
        #hello > 0 and #a > 1
}