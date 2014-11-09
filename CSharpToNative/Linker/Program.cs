using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using CSharpToNative;

namespace Linker
{
    class Program
    {
        static void Main(string[] args)
        {
            LinkExecutable exe = new LinkExecutable();
            BinaryReader read = new BinaryReader(File.OpenRead(args[0]));
            exe.ReadELF(read);
        }
    }
}
