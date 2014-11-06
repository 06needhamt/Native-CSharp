using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    class Unsafe
    {
        public static void readvarsymboltable(LinkedList<Tuple<string, string, string>> symboltable)
        {
            LinkedListNode<Tuple<string, string, string>> node = symboltable.First;
            //Dictionary<string, string> dict = new Dictionary<string, string>();
            while (node.Next != null)
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
            LinkedListNode<string[]> node = funcsymboltable.First;
           while(node.Next != null)
           {
               for (int i = 0; i < node.Value.Length; i++)
               {
                   Console.Write(node.Value[i]);
               }
               Console.WriteLine();
               Console.ReadKey();
               node = node.Next;
           }
        }
    }
}
