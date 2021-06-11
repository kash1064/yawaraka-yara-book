rule HelloAt0x1140
{
    strings:
        $hello = "Hello"

    condition:
        // 0x1140を10進数で定義することも可能
        $hello at 0x1140 and $hello at 4416
}