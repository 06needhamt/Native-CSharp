using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;

namespace CSharpToNative
{
    internal class Program
    {
        private static string[] lines; // array to hold the lines
        private static StreamWriter writer; // writer for writing to the file
        private static StreamWriter conwriter;
        private static string currentdir = System.Environment.CurrentDirectory + "/"; // current working directory
        private static string outfile = "output.o";
        private static Assembly ELFLib;
        private static Type ELFFile;
        private static Lexer Lex;

        private static void Main(string[] args)
        {
            //Process.Start(currentdir + "Linker.exe", currentdir + "output.o");
            //Console.ReadKey();
            //Environment.Exit(0);
            Lex = new Lexer();
            //bool[] nullornot = new bool[100];
            conwriter = new StreamWriter(currentdir + "Sysout.txt", false);
            Console.SetOut(conwriter);
            LexicallyAnalyseFile(args[0]);
            ReadSymbolTables();
            CompileFile();
            Console.Error.WriteLine("Press Any Key To Exit");
            Console.ReadKey();
        }

        private static void CreateObjectFile()
        {
            ELFLib = Assembly.LoadFile(currentdir + "ELFLib.dll");
            //for (int i = 0; i < ELFLib.GetExportedTypes().Length; i++)
            //{
            //    Console.WriteLine(ELFLib.GetExportedTypes()[i].ToString());
            //}
            ELFFile = ELFLib.GetType("ELFLib.ELFFile", true);
            try
            {
                object elf = Activator.CreateInstance(ELFFile, new object[] { Lex, "output.o" });
            }
            catch (TargetInvocationException ex)
            {
                Console.Error.WriteLine(ex.Message);
                Console.Error.WriteLine(ex.StackTrace);
                Console.Error.WriteLine();
                Console.Error.WriteLine(ex.InnerException.Message);
                Console.Error.WriteLine(ex.InnerException.StackTrace);
                Console.ReadKey();
            }
        }

        private static void CreateAssemblyFile()
        {
            string outfile = currentdir + "Output.asm";
            if (File.Exists(outfile)) // if file exists delete and create it again so it is empty
            {
                File.Delete(outfile);
            }
            //else
            //{
            //    File.Create(outfile);
            //}
        }

        private static void CompileFile()
        {
            Console.Error.WriteLine("Compilation Commencing");
            CreateAssemblyFile();
            CreateObjectFile();
            Console.WriteLine(Lex.pubtokenslist.Count);
            for (int i = 0; i < Lex.pubtokenslist.Count; i++)
            {
                Console.WriteLine("In loop 1");
                List<Instruction> inst;
                //Console.WriteLine("In loop 2");
                //Console.Error.WriteLine(Lex.pubtokenslist.ElementAt(i)[0]);
                
                AST tokentree = new AST(Lex.pubtokenslist.ElementAt<string[]>(i));
                Parser parser = new Parser(tokentree, ref i);
                parser.Parse();
                inst = parser.getInstructions();
                Console.Error.WriteLine("There Are " + inst.Count + " Instructions");
                for (int k = 0; k < inst.Count; k+=6) // HACK Warning revert to k++ when parser is fixed
                {
                    inst.ElementAt(k).printAssemblyInstruction();
                    inst.ElementAt(k).PrintBinaryInstruction();
                }
                inst.Clear();
            }

            Console.Error.WriteLine("Compilation Complete");
        }

        private static void ReadSymbolTables()
        {
            Console.Error.WriteLine("Reading int symbol table");
            Symbol.readintsymboltable(Lex.getintsymboltable());
            Console.Error.WriteLine("Reading string symbol table");
            Symbol.readstringsymboltable(Lex.getstringsymboltable());
            Console.Error.WriteLine("Reading Function Symbol table");
            Symbol.readfunctionsymboltable(Lex.getfunctionsymboltable());
        }

        private static void LexicallyAnalyseFile(string file)
        {
            writer = new StreamWriter(currentdir + file + ".tokens");
            lines = File.ReadAllLines(currentdir + file);
            Console.Error.WriteLine("Compiling File: " + file);
            Console.Error.WriteLine("Lexical Analasis Commencing");
            for (int i = 0; i < lines.Length; i++)
            {
                if (lines[i].StartsWith("//"))
                {
                    continue;
                }
                Console.WriteLine(lines[i]);
                Lex.Start(ref lines, ref i, writer);
            }
            writer.Flush();
            writer.Close();
            writer.Dispose();
            Console.Error.WriteLine("Lexical Analasis Complete");
        }
    }
}