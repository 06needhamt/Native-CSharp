using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Diagnostics;

namespace CSharpToNative
{
	class Program
	{
		//private static List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "++#", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
		//private static List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void" });
		//private static List<string> types = new List<string>(new string[] { "int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });
		private static string[] lines; // array to hold the lines
		private static StreamWriter writer; // writer for writing to the file
        private static StreamWriter conwriter;
		private static string currentdir = System.Environment.CurrentDirectory + "/"; // current working directory

        static void Main(string[] args)
        {
            //Process.Start(@"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\Linker\bin\Debug\Linker.exe",
            // @"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\CSharpToNative\bin\Debug\Output.o");
            //Environment.Exit(0);
            bool[] nullornot = new bool[100];
            //conwriter = new StreamWriter(currentdir + "output.txt", false);
            //Console.SetOut(conwriter);
            //string[] split = StringManipulation.HandMadeSplit("public static void main(int i);").ToArray();
            //for (int i = 0; i < split.Length; i++)
            //{
            //    Console.WriteLine(split[i]);
            //}
            //Console.ReadKey();
            //Environment.Exit(0);
            // DefineTest.run();
            Instruction ins = new Instruction(1, new string[] { "eax", "ecx" });
            ins.printAssemblyInstruction();
            Console.ReadKey();
            ins.PrintBinaryInstruction();
            Console.ReadKey();
            Environment.Exit(0);
            //outloc = args[0] + ".lex";
            //Console.WriteLine(EnumKeywords.PUBLIC.ToString());
            //Console.ReadKey();
            //Environment.Exit(0);
            //writer = new StreamWriter(currentdir + args[0] + ".lex");
            writer = new StreamWriter(currentdir + args[0] + ".tokens");
            lines = File.ReadAllLines(currentdir + args[0]);
            //Console.WriteLine(operators.Count);
            //Console.WriteLine(keywords.Count);
            //Console.WriteLine(Convert.ToString((EnumOperator)1));
            for (int i = 0; i < lines.Length; i++)
            {
                //if(System.Text.RegularExpressions.Regex.IsMatch(lines[i], @"//.*|/\*([~/]|\*[~/])*\*+/"));
                //{
                //    continue;
                //}
                if (lines[i].StartsWith("//"))
                {
                    continue;
                }
                Console.WriteLine(lines[i]);
                Lexer.Start(ref lines, ref i, writer);
                //Tokenizer.Start(lines,writer);
            }
            //Tokenizer.Start(lines, writer);
            writer.Flush();
            writer.Close();
            writer.Dispose();
            Console.WriteLine("Lexical Analasis Complete");
            Console.WriteLine("Reading int symbol table");
            Symbol.readintsymboltable(Lexer.getintsymboltable());
            Console.WriteLine("Reading string symbol table");
            Symbol.readstringsymboltable(Lexer.getstringsymboltable());
            Console.WriteLine("Reading Function Symbol table");
            Symbol.readfunctionsymboltable(Lexer.getfunctionsymboltable());
            Console.WriteLine("Compilation Commencing");
            Console.WriteLine(Lexer.pubtokenslist.Count);
            for (int i = 0; i < Lexer.pubtokenslist.Count; i++)
            {
                Console.WriteLine("In loop 1");
                for (int j = 0; j < Lexer.pubtokenslist.ElementAt<string[]>(i).Length; j++)
                {
                    Console.WriteLine("In loop 2");
                    if (Lexer.pubtokenslist.ElementAt<string[]>(i)[j] == null)
                    {
                        nullornot[j] = true;
                    }
                    else
                    {
                        AST<dynamic, dynamic, dynamic, dynamic> tokentree = new AST<dynamic, dynamic, dynamic, dynamic>(Lexer.pubtokenslist.ElementAt<string[]>(i));
                        Parser parse = new Parser(tokentree, ref i);
                    }
                }
                if (checknull(nullornot))
                {
                    continue;
                }

                Console.WriteLine("Compilation Complete");
                Console.WriteLine("Press Any Key To Exit");
                Console.ReadKey();
            }
        }
        private static bool checknull(bool[] nullornot)
        {
            for (int i = 0; i < nullornot.Length; i++)
            {
                if (nullornot[i] != true)
                {
                    return true;
                }
                else
                {
                    continue;
                }
            }
            return false;
        }

       


    }
}
