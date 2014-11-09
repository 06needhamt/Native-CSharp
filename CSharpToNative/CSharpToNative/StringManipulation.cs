using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

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
                if ( ch == '(' || ch == ')')
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
            int length = tokens.Length;
            string array = string.Empty;
            for (int i = 0; i < length; i++)
            {
                if (i < length - 2)
                {
                    array = array + tokens[i];
                    array = array + ",";
                }
                else
                {
                    array = array + tokens[i];
                }
            }
            return array;
        }
    }
}
