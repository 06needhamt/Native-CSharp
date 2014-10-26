using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    class Unsafe
    {
        public static unsafe void readsymboltable(LinkedList<dynamic> symboltable)
        {
            foreach (var i in symboltable)
            {
                int* mem = null;
            }
        }
    }
}
