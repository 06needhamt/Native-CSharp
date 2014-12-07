using CSharpToNative;
using System;
using System.IO;

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