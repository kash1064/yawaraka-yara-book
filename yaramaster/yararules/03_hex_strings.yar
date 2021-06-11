rule ELF_HEADER_1
{
    strings:
        // 03_hexstrings.binのELFヘッダ前半7バイトに完全一致
        $text_string = { 7f 45 4c 46 02 01 01 }
 
    condition:
        $text_string
}

rule ELF_HEADER_2
{
    strings:
        // 先頭2バイト目と4バイト目にワイルドカードを使用
        $text_string = { 7f ?? 4c ?? 02 01 01 }

    condition:
        $text_string
}

rule ELF_HEADER_3
{
    strings:
        // 先頭2バイト目から4バイト目までを代替シーケンスで置き換え
        $text_string = { 7f [1-3] 02 01 01 }

    condition:
        $text_string
}

rule NOT_ELF_HEADER_3
{
    strings:
        // 先頭2バイト目から4バイト目までを代替シーケンスで置き換えるが、範囲外なのでマッチしない
        $text_string = { 7f [6-10] 02 01 01 }

    condition:
        $text_string
}

rule ELF_HEADER_4
{
    strings:
        // 先頭2バイト目から4バイト目までを3バイト分の代替シーケンスで置き換え
        $text_string = { 7f [3] 02 01 01 }

    condition:
        $text_string
}

rule NOT_ELF_HEADER_4
{
    strings:
        // 先頭2バイト目から4バイト目までを6バイトちょうどの代替シーケンスで置き換えるのでマッチしない
        $text_string = { 7f [6] 02 01 01 }

    condition:
        $text_string
}

rule ELF_HEADER_5
{
    strings:
        // 1-infinit の代替シーケンス
        $text_string = { 7f 45 4c [1-] 02 01 01 }

    condition:
        $text_string
}

rule ELF_HEADER_6
{
    strings:
        // いずれかにマッチ
        $text_string = { 7f 45 4c ( 46 | 45 ) 02 01 01 }

    condition:
        $text_string
}

rule ELF_HEADER_7
{
    strings:
        // ワイルドカードも使用可能
        $text_string = { 7f 45 4c ( ?? | aa | bb ) 02 01 01 }

    condition:
        $text_string
}