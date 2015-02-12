using System;
using System.IO;
using System.Linq;
using System.Diagnostics;
using System.Collections.Generic;
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
            //Process.Start(@"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\Linker\bin\Debug\Linker.exe",
            // @"C:\Users\Tom\Documents\GitHub\Compiler-Experimental\CSharpToNative\CSharpToNative\bin\Debug\Output.o");
            //Environment.Exit(0);
            Lex = new Lexer();
            bool[] nullornot = new bool[100];
            conwriter = new StreamWriter(currentdir + "output.txt", false);
            Console.SetOut(conwriter);
            CreateAssemblyFile();
            CreateObjectFile();
            //Instruction ins = new Instruction(1, new string[] { "eax", "ecx" });
            //ins.printAssemblyInstruction();
            ////Console.ReadKey();
            //ins.PrintBinaryInstruction();

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
                Lex.Start(ref lines, ref i, writer);
            }
            writer.Flush();
            writer.Close();
            writer.Dispose();
            Console.Error.WriteLine("Lexical Analasis Complete");
            Console.Error.WriteLine("Reading int symbol table");
            Symbol.readintsymboltable(Lex.getintsymboltable());
            Console.Error.WriteLine("Reading string symbol table");
            Symbol.readstringsymboltable(Lex.getstringsymboltable());
            Console.Error.WriteLine("Reading Function Symbol table");
            Symbol.readfunctionsymboltable(Lex.getfunctionsymboltable());
            Console.Error.WriteLine("Compilation Commencing");
            Console.WriteLine(Lex.pubtokenslist.Count);
            for (int i = 0; i < Lex.pubtokenslist.Count; i++)
            {
                Console.WriteLine("In loop 1");
                for (int j = 0; j < Lex.pubtokenslist.ElementAt<string[]>(i).Length; j++)
                {
                    List<Instruction> inst;
                    Console.WriteLine("In loop 2");
                    if (Lex.pubtokenslist.ElementAt<string[]>(i)[j] == null)
                    {
                        nullornot[j] = true;
                    }
                    else
                    {
                        AST tokentree = new AST(Lex.pubtokenslist.ElementAt<string[]>(i));
                        Parser parse = new Parser(tokentree, ref i);
                        inst = parse.getInstructions();
                        for (int k = 0; k < inst.Count; k++)
                        {
                            //Console.Error.WriteLine("Printing Instruction");
                            //Console.Error.WriteLine(inst.ElementAt(k).getOperands().Count());
                            inst.ElementAt(k).printAssemblyInstruction();
                            inst.ElementAt(k).PrintBinaryInstruction();
                        }
                        inst.Clear();
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

        private static void CreateObjectFile()
        {

            ELFLib = Assembly.LoadFile(currentdir + "ELFLib.dll");
            for (int i = 0; i < ELFLib.GetExportedTypes().Length; i++)
            {
                Console.WriteLine(ELFLib.GetExportedTypes()[i].ToString());
            }
            ELFFile = ELFLib.GetType("ELFLib.ELFFile", true);
            //if (!File.Exists(outfile))
            //{
            //    File.Create(outfile);
            //}
            //else
            //{
            //    File.Delete(outfile);
            //    File.Create(outfile);
            //}
            try
            {
                object elf = Activator.CreateInstance(ELFFile,new object[] {Lex,"output.0"});
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