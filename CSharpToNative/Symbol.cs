using System;
using System.Collections.Generic;

namespace Native.CSharp.Compiler
{
    internal class Symbol
    {
        public static void readintsymboltable(LinkedList<Tuple<string, string, string>> symboltable)
        {
            if (symboltable.Count == 0)
            {
                Console.WriteLine("No Ints");
                return;
            }

            LinkedListNode<Tuple<string, string, string>> node = symboltable.First;
            //Dictionary<string, string> dict = new Dictionary<string, string>();
            while (node != null)
            {
                Console.WriteLine(node.Value.Item1.ToString());
                Console.WriteLine(node.Value.Item2.ToString());
                Console.WriteLine(node.Value.Item3.ToString());
                //dict.Add(node.Value.Item2.ToString(), node.Value.Item3.ToString());
                //Console.ReadKey();
                node = node.Next;
            }
        }

        public static void readstringsymboltable(LinkedList<Tuple<string, string, string>> symboltable)
        {
            if (symboltable.Count == 0)
            {
                Console.WriteLine("No Strings");
                return;
            }

            LinkedListNode<Tuple<string, string, string>> node = symboltable.First;
            //Dictionary<string, string> dict = new Dictionary<string, string>();
            while (node != null)
            {
                Console.WriteLine(node.Value.Item1.ToString());
                Console.WriteLine(node.Value.Item2.ToString());
                Console.WriteLine(node.Value.Item3.ToString());
                //dict.Add(node.Value.Item2.ToString(), node.Value.Item3.ToString());
                //Console.ReadKey();
                node = node.Next;
            }
        }

        public static void readfunctionsymboltable(LinkedList<string[]> funcsymboltable)
        {
            if (funcsymboltable.Count == 0)
            {
                Console.WriteLine("No Functions");
                return;
            }
            LinkedListNode<string[]> node = funcsymboltable.First;
            while (node != null)
            {
                for (int i = 0; i < node.Value.Length; i++)
                {
                    Console.Write(node.Value[i]);
                }
                Console.WriteLine();
                //Console.ReadKey();
                node = node.Next;
            }
        }
    }
}