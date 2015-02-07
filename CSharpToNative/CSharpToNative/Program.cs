using System;
using System.IO;
using System.Linq;
using System.Diagnostics;

namespace CSharpToNative
{
    internal class Program
    {
        private static string[] lines; // array to hold the lines

        private static StreamWriter writer; // writer for writing to the file
        private static StreamWriter conwriter;
        private static string currentdir = System.Environment.CurrentDirectory + "/"; // current working directory

        private static void Main(string[] args)
        {
            //Process.Start(@"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\Linker\bin\Debug\Linker.exe",
            // @"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\CSharpToNative\bin\Debug\Output.o");
            //Environment.Exit(0);
            bool[] nullornot = new bool[100];
            conwriter = new StreamWriter(currentdir + "output.txt", false);
            Console.SetOut(conwriter);
            Instruction ins = new Instruction(1, new string[] { "eax", "ecx" });
            ins.printAssemblyInstruction();
            //Console.ReadKey();
            ins.PrintBinaryInstruction();

            writer = new StreamWriter(currentdir + args[0] + ".tokens");
            lines = File.ReadAllLines(currentdir + args[0]);
            Console.Error.WriteLine("Compiling File: " + args[0]);
            for (int i = 0; i < lines.Length; i++)
            {

                if (lines[i].StartsWith("//"))
                {
                    continue;
                }
                Console.WriteLine(lines[i]);
                Lexer.Start(ref lines, ref i, writer);
            }
            writer.Flush();
            writer.Close();
            writer.Dispose();
            Console.Error.WriteLine("Lexical Analasis Complete");
            Console.Error.WriteLine("Reading int symbol table");
            Symbol.readintsymboltable(Lexer.getintsymboltable());
            Console.Error.WriteLine("Reading string symbol table");
            Symbol.readstringsymboltable(Lexer.getstringsymboltable());
            Console.Error.WriteLine("Reading Function Symbol table");
            Symbol.readfunctionsymboltable(Lexer.getfunctionsymboltable());
            Console.Error.WriteLine("Compilation Commencing");
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
                GC.Collect(int.MaxValue, GCCollectionMode.Forced, false);
                GC.WaitForFullGCComplete(5000);
            }

            Console.Error.WriteLine("Compilation Complete");
            Console.Error.WriteLine("Press Any Key To Exit");
            Console.ReadKey();
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