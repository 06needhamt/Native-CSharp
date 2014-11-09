using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using CSharpToNative;

namespace Linker
{
    public class LinkExecutable
    {
        public LinkExecutable()
        {
            Console.WriteLine("Linker Was Called");
        }

        public ELFFile ReadELF(BinaryReader read)
        {
            long origin = 0;
            ELFFile file = new ELFFile();
            file.setheader(read.ReadBytes(50));
            origin += 50;

            return file;
        }
    }
}
