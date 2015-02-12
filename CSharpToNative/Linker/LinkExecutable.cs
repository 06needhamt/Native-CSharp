using ELFLib;

using System;
using System.IO;
using System.Collections.Generic;

namespace Linker
{
    public class LinkExecutable
    {
        LinkedList<ELFFile> Files;
        byte[] header = new byte[41];
        const int HEADER_LENGTH = 41;

        public LinkExecutable()
        {
            Console.WriteLine("Linker Was Called");
        }

        public void ReadELF(string path, BinaryReader read)
        {
            long origin = 0;
            ELFFile file = new ELFFile();
            Files.AddLast(file);
            read.Read(header, (int)origin, HEADER_LENGTH);
            file.setheader(header);
            origin += HEADER_LENGTH;
        }
    }
}