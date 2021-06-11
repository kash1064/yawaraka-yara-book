#include <stdio.h>
#include <iostream>
using namespace std;

void xor_print(string input_text, int start_num, int end_num)
{
    if (input_text.size() > 5) return;
    if (((start_num > 255)  || (start_num < 0)) || ((end_num > 255) || (end_num < 0))) return;
    string text = "";

    for(int i = start_num; i < end_num+1; i++)
    {
        text = "";
        for (auto t : input_text)
        {
            text.push_back(t ^ i);
        }
        cout << hex << i << " : " << text << endl;
    }
    return;
}

int main()
{
    string input_text;
    int start_num, end_num;

    cout << "変換する文字列(最大5文字) : ";
    cin >> input_text;

    cout << "開始(0-255) : ";
    cin >> start_num;

    cout << "終了(0-255) : ";
    cin >> end_num;

    xor_print(input_text, start_num, end_num);
    return 0;
}