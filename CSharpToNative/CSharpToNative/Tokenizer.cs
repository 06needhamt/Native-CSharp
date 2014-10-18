using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace CSharpToNative
{
    static class Tokenizer
    {
        //public static string[] pubtokens;
        public static List<string[]> pubtokenslist = new List<string[]>(0);
        private static readonly List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "++#", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
        private static readonly List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void", "readonly" });
        private static readonly List<string> types = new List<string>(new string[] { /*"const", "void","static void","static",*/"int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });
        private static string[] lines;
        private static List<EnumOperator> ops = new List<EnumOperator>(0);
        private static List<EnumKeywords> kywrds = new List<EnumKeywords>(0);
        private static List<EnumTypes> typedefs = new List<EnumTypes>(0);
        private static List<string> usertypedefs = new List<string>(0);
        private static StreamWriter writer;
        private static List<char[]> temptokens = new List<char[]>(0);  // tokens from each checking stage are stored here
        private static bool isafunction = false;
        private static List<Tuple<string>> integersymboltable = new List<Tuple<string>>(0);
        private static List<Tuple<string>> stringsymboltable = new List<Tuple<string>>(0);
        private static List<Tuple<string, string, string>> functionsymboltable = new List<Tuple<string, string, string>>(0);
        private static bool isbracket = false;

        public static void Start (string[] linespar , StreamWriter writerpar)
        {
            lines = linespar;
            writer = writerpar;

            for (int i = 0; i < lines.Length; i++ )
            {
                temptokens.Add(lines[i].ToCharArray());
            }
            foreach (char[] c in temptokens)
            {
                for (int j = 0; j < c.Length; j++)
                {
                    writer.Write(c[j]);
                }
                writer.WriteLine();
            }
            //writer.Flush();
            //writer.Close();
            //writer.Dispose();
        }
    }
}
