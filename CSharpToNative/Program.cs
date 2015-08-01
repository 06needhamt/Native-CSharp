using Native.CSharp.ELFLib;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Native.CSharp.Compiler
{
    public class Program
    {
        private static string[] lines; // array to hold the lines
        private static StreamWriter writer; // writer for writing to the file
        private static StreamWriter conwriter;
        private static string currentdir = System.Environment.CurrentDirectory + "/"; // current working directory
        private static string outfile = "output.o";
        private static Lexer Lex;
        private static bool is64Bits;
        private static Tokeniser T;

        public static void Main(string[] args)
        {
            VersionCheck();
            //Console.ReadKey();
            //Console.Error.WriteLine("Constant = " + );
            if (args.Length == 0)
            {
                Console.Error.WriteLine("Invalid Arguments");
                Console.Error.WriteLine("Press Any Key To Continue...");
                Console.ReadKey();
                Environment.Exit(0);
            }
            string[] tempargs = args[0].Split(new char[] { '\\' });
            //for(int i = 0; i < tempargs.Length; i++)
            //{
            //    Console.Error.WriteLine(tempargs[i]);
            //}
            //Console.ReadKey();
            T = new Tokeniser(currentdir, tempargs[tempargs.Length - 1], args);
            T.Start();
            Token A = new Token(EnumTokenFlags.NO_FLAGS, EnumTokenType.UNKNOWN, (byte)'7');
            Console.Error.WriteLine(A.isNumeric());
            CheckIf64Bits();
            //Process.Start(currentdir + "Linker.exe", currentdir + "output.o");
            //Console.ReadKey();
            //Environment.Exit(0);
            //bool[] nullornot = new bool[100];
            conwriter = new StreamWriter(currentdir + "Sysout.txt", false);
            Console.SetOut(conwriter);

            LexicallyAnalyseFile(args[0]);
            ReadSymbolTables();
            CompileFile();
            Console.Error.WriteLine("Press Any Key To Exit");
            Console.ReadKey();
        }

        private static void VersionCheck()
        {
            ELFFile e = new ELFFile();
            Console.Error.WriteLine("ELF Version: " + e.GetVersionNumber());
            if (!GetVersionNumber().Equals(e.GetVersionNumber()))
            {
                try
                {
                    throw new Exception();
                }
                catch
                {
                    Console.ForegroundColor = ConsoleColor.Magenta;
                    Console.Error.WriteLine("Please make sure compiler and ElF Versions are equal");
                    Console.ResetColor();
                    Console.ReadKey();
                    Environment.Exit(0);
                }
            }
            //Console.Error.WriteLine("Compiling With ELF Libary Version: " + e.GetVersionNumber());
        }

        private static string GetVersionNumber()
        {
            var CurrentAssembly = System.Reflection.Assembly.GetExecutingAssembly();
            string VersionNumber = CurrentAssembly.GetName().Version.ToString();
            Console.Error.WriteLine("Compiler Version:" + VersionNumber);
            return VersionNumber;
        }

        public static bool CheckIf64Bits()
        {
            return is64Bits;
        }

        private static void CreateObjectFile()
        {
            try
            {
                ELFFile elf = new ELFFile("output.o");
            }
            catch (Exception ex)
            {
                Console.Error.WriteLine(ex.Message);
                Console.Error.WriteLine(ex.StackTrace);
                Console.Error.WriteLine();
                Console.Error.WriteLine(ex.InnerException.Message);
                Console.Error.WriteLine(ex.InnerException.StackTrace);
                Console.ReadKey();
            }
        }

        private static void EmptyAssemblyFile()
        {
            string outfile = currentdir + "Output.asm";
            if (File.Exists(outfile)) // if file exists delete and create it again so it is empty
            {
                File.Delete(outfile);
            }
        }

        private static void CompileFile()
        {
            Console.Error.WriteLine("Compilation Commencing");
            EmptyAssemblyFile();
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
                for (int k = 0; k < inst.Count; k++) // parser is now fixed
                {
                    inst.ElementAt(k).printAssemblyInstruction();
                    inst.ElementAt(k).PrintBinaryInstruction();
                }
                inst.Clear();
            }

            Console.Error.WriteLine("Compilation Complete with " + StaticValues.Errors + " Errors " + 
                "And " + StaticValues.Warnings + " Warnings ");
        }

        private static void ReadSymbolTables()
        {
            Console.Error.WriteLine("Reading int symbol table");
            Lexer.readintsymboltable(Lex.getintsymboltable());
            Console.Error.WriteLine("Reading string symbol table");
            Lexer.readstringsymboltable(Lex.getstringsymboltable());
            Console.Error.WriteLine("Reading Function Symbol table");
            Lexer.readfunctionsymboltable(Lex.getfunctionsymboltable());
        }

        private static void LexicallyAnalyseFile(string file)
        {
            string[] tempargs = file.Split(new char[] { '\\' });
            writer = new StreamWriter(currentdir + tempargs[tempargs.Length - 1] + ".tokens");
            lines = File.ReadAllLines(currentdir + tempargs[tempargs.Length - 1]);
            Lex = new Lexer(ref lines, writer);
            Console.Error.WriteLine("Compiling File: " + tempargs[tempargs.Length - 1]);
            Console.Error.WriteLine("Lexical Analasis Commencing");

            switch (Lex.CheckBrackets())
            {
                case 0:
                    {
                        Console.Error.WriteLine("All braces matched");
                        break;
                    }
                case 1:
                    {
                        Console.Error.WriteLine("Expected ( or )");
                        break;
                    }
                case 2:
                    {
                        Console.Error.WriteLine("Expected [ or ]");
                        break;
                    }
                case 3:
                    {
                        Console.Error.WriteLine("Expected { or }");
                        break;
                    }
            }
            for (int i = 0; i < lines.Length; i++)
            {
                if (lines[i].StartsWith("//"))
                {
                    continue;
                }
                Console.WriteLine(lines[i]);

                Lex.Start(ref i);
            }
            Lex.Dispose();
            Console.Error.WriteLine("Lexical Analasis Complete");
        }
    }
}