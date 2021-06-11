private rule BaseRule
{
    strings:
        $base = "===Base==="
    condition:
        $base
}

rule MainRule
{
    strings:
        $test = "This is main"

    condition:
        $test and BaseRule
}