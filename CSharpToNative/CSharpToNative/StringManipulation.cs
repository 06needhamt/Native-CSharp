using System.Collections.Generic;
using System.Text;

namespace CSharpToNative
{
    public static class StringManipulation
    {
        public static LinkedList<string> HandMadeSplit(string input)
        {
            LinkedList<string> Result = new LinkedList<string>();
            StringBuilder word = new StringBuilder();
            foreach (char ch in input)
            {
                if (ch == '(' || ch == ')')
                {
                    Result.AddLast(word.ToString());
                    word.Length = 0;
                    word.Append(ch.ToString());
                    Result.AddLast(word.ToString());
                    word.Length = 0;
                }
                else if (ch == ' ' || ch == ';')
                {
                    Result.AddLast(word.ToString());
                    word.Length = 0;
                }
                else
                {
                    word.Append(ch);
                    //Result.AddLast(word.ToString());
                }
            }
            Result.AddLast(word.ToString());
            return Result;
        }

        public static string getarray(string[] tokens)
        {
            string array = string.Empty;
            for (int i = 0; i < tokens.Length; i++)
            {
                int length = tokens.Length;
                if (i < length - 2)
                {
                    array += tokens[i];
                    array += ",";
                }
                else
                {
                    array += tokens[i];
                }
            }
            return array;
        }
    }
}