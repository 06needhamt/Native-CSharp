using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    static class StringManipulation
    {
        public static IEnumerable<string> HandMadeSplit(string input)
        {
            var Result = new LinkedList<string>();
            var word = new StringBuilder();
            foreach (var ch in input)
            {
                if ( ch == '(' || ch == ')')
                {
                    //Result.AddLast(ch.ToString() + word.ToString());
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
                }
            }
            Result.AddLast(word.ToString());
            return Result;
        }
    }
}
