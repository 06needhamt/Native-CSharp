using Native.CSharp.ELFLib;
using System;
using System.Collections.Generic;
using System.IO;

namespace Native.CSharp.Linker
{
    public class LinkExecutable
    {
        private LinkedList<ELFFile> Files;
        private byte[] header = new byte[41];
        private const int HEADER_LENGTH = 41;

        public LinkExecutable()
        {
            Console.WriteLine("Linker Was Called");
        }

        public void ReadELF(string path, BinaryReader read)
        {
            long origin = 0;
            ELFFile file = new ELFFile();
            Files = new LinkedList<ELFFile>();
            Files.AddLast(file);
            read.Read(header, (int)origin, HEADER_LENGTH);
            file.setheader(header);
            origin += HEADER_LENGTH;
        }
    }
}