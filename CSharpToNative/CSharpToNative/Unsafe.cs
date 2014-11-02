using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    class Unsafe
    {
        public static void readsymboltable(LinkedList<Tuple<string,string>> symboltable)
        {
            LinkedListNode<Tuple<string, string>> node = symboltable.First;
            while (node.Next != null)
            {
                Console.WriteLine(node.Value.Item1.ToString());
                Console.WriteLine(node.Value.Item2.ToString());
                Console.ReadKey();
                node = node.Next;
            }
        }
    }
}
