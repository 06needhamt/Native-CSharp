﻿using System;
using System.Collections.Generic;
using System.IO;

namespace Native.CSharp.ELFLib
{
    public class ELFFile
    {
        private byte[] fileheader = new byte[41];
        private string currentdir = System.Environment.CurrentDirectory + "/";
        private static long origin;
        private readonly string archetecture;
        private Dictionary<string, string> datasegment = new Dictionary<string, string>();
        private ShsrtabSegment shr;
        private string version;

        public ELFFile()
        {
            this.archetecture = CPUInfo.GetProcessorArchitecture().ToString();
            Console.WriteLine(this.archetecture);
            version = this.GetVersionNumber();
        }

        public ELFFile(string name)
        {
            this.archetecture = CPUInfo.GetProcessorArchitecture().ToString();
            Console.WriteLine(this.archetecture);
            version = this.GetVersionNumber();
            CreateHeader();
            shr = CreateShsrtabSegment();
            Createdatasement(null);
            WriteFile(name);
        }

        //public ELFFile(Lexer L)
        //{
        //    this.archetecture = CPUInfo.GetProcessorArchitecture().ToString();
        //    Console.WriteLine(this.archetecture);
        //    version = this.GetVersionNumber();
        //    CreateHeader();
        //    shr = CreateShsrtabSegment();
        //    Createdatasement(L.getintsymboltable());
        //    Createdatasement(L.getstringsymboltable());
        //    WriteFile("Default.o");
        //}

        //public ELFFile(Lexer L, string name)
        //{
        //    this.archetecture = CPUInfo.GetProcessorArchitecture().ToString();
        //    Console.WriteLine(this.archetecture);
        //    version = this.GetVersionNumber();
        //    CreateHeader();
        //    shr = CreateShsrtabSegment();
        //    Createdatasement(L.getintsymboltable());
        //    Createdatasement(L.getstringsymboltable());
        //    WriteFile(name);
        //}

        public string GetVersionNumber()
        {
            var CurrentAssembly = System.Reflection.Assembly.GetExecutingAssembly();
            string VersionNumber = CurrentAssembly.GetName().Version.ToString();
            return VersionNumber;
        }

        private DataSegment Createdatasement(LinkedList<Tuple<string, string, string>> symboltable)
        {
            if (this.shr != null)
            {
                shr.AddSegmentName(".data");
            }
            {
                shr = CreateShsrtabSegment();
            }
            DataSegment data = new DataSegment(".data", shr.getBeginOffset(), shr.getEndOffset(), new LinkedList<byte>());
            return data;
        }

        private ShsrtabSegment CreateShsrtabSegment()
        {
            ShsrtabSegment shr = new ShsrtabSegment(new LinkedList<string>());
            return shr;
        }

        private long WriteFile(string name)
        {
            if (File.Exists(currentdir + name))
            {
                File.Delete(currentdir + name);
            }
            BinaryWriter writer = new BinaryWriter(File.Open(currentdir + name, FileMode.OpenOrCreate, FileAccess.ReadWrite));
            writer.Seek(0, SeekOrigin.Begin);
            origin = writeheader(ref writer, ref origin);
            origin = writedatasegment(datasegment, ref origin, ref writer);
            writer.Write(".code");
            origin = writer.Seek((int)origin, SeekOrigin.Begin);
            writer.Flush();
            writer.Close();
            writer.Dispose();
            //Environment.Exit(0);
            return origin;
        }

        private long writeheader(ref BinaryWriter writer, ref long origin)
        {
            for (int i = 0; i < fileheader.Length; i++)
            {
                writer.Write(fileheader[i]);
            }
            origin = writer.Seek((int)origin, SeekOrigin.Current);
            //Environment.Exit(0);
            return origin;
        }

        private long writedatasegment(Dictionary<string, string> datasegment, ref long origin, ref BinaryWriter writer)
        {
            LinkedList<byte> bytes = new LinkedList<byte>();
            foreach (var item in datasegment)
            {
                char[] cbytes = item.Key.ToCharArray();
                for (int i = 0; i < cbytes.Length; i++)
                {
                    bytes.AddLast((byte)cbytes[i]);
                }
                cbytes = item.Value.ToCharArray();
                for (int i = 0; i < cbytes.Length; i++)
                {
                    bytes.AddLast((byte)cbytes[i]);
                }
            }
            DataSegment d = new DataSegment(".data", origin, origin, bytes);
            //writer.Write(".data");

            origin = writer.Seek((int)origin, SeekOrigin.Current);
            return origin;
        }

        private void CreateHeader()
        {
            // write elf header bytes
            this.fileheader[0] = 0x7F;
            this.fileheader[1] = 0x45;
            this.fileheader[2] = 0x4C;
            this.fileheader[3] = 0x46;
            this.fileheader[4] = 0x01;
            this.fileheader[5] = 0x02;
            this.fileheader[6] = 0x01;
            this.fileheader[7] = 0x00;
            this.fileheader[8] = 0x08;
            this.fileheader[9] = 0x00;
            this.fileheader[10] = 0x00;
            this.fileheader[11] = 0x00;
            this.fileheader[12] = 0x00;
            this.fileheader[13] = 0x00;
            this.fileheader[14] = 0x00;
            this.fileheader[15] = 0x00;
            this.fileheader[16] = 0x00;
            this.fileheader[17] = 0x01;
            this.fileheader[18] = 0x00;
            this.fileheader[19] = 0x3E;
            this.fileheader[20] = 0x00;
            this.fileheader[21] = 0x00;
            this.fileheader[22] = 0x00;
            this.fileheader[23] = 0x01;
            this.fileheader[24] = 0x00;
            this.fileheader[25] = 0x00;
            this.fileheader[26] = 0x00;
            this.fileheader[27] = 0x7C;
            this.fileheader[28] = 0x00;
            this.fileheader[29] = 0x00;
            this.fileheader[30] = 0x00;
            this.fileheader[31] = 0x34;
            this.fileheader[32] = 0x00;
            this.fileheader[33] = 0x00;
            this.fileheader[34] = 0x00;
            this.fileheader[35] = 0x00;
            this.fileheader[36] = 0x00;
            this.fileheader[37] = 0x32;
            this.fileheader[38] = 0x00;
            this.fileheader[39] = 0x00;
            this.fileheader[40] = 0x12;
        }

        public byte[] getheader()
        {
            return this.fileheader;
        }

        public static long getorigin()
        {
            return origin;
        }

        public Dictionary<string, string> getdatasegment()
        {
            return this.datasegment;
        }

        public byte[] setheader(byte[] header)
        {
            this.fileheader = header;
            return this.fileheader;
        }

        public Dictionary<string, string> setdatasegment(Dictionary<string, string> seg)
        {
            this.datasegment = seg;
            return this.datasegment;
        }

        public string getArchitecture()
        {
            return this.archetecture;
        }
    }
}

/*
from http://docs.oracle.com/cd/E19620-01/805-4693/6j4emccrq/index.html

The ELF header is always located at the beginning of the ELF file. It describes the ELF file organization and contains the actual sizes of the object file control structures.

The ELF header consists of the following fields, or members, some have the value 0 for relocatable files:

e_ident
This is a byte array consisting of the EI_NIDENT initial bytes of the ELF header, where EI_NIDENT is a name for 16. The elements of this array mark the file as an ELF object file and provide machine-independent data that can be used to decode and interpret the file's contents.

e_type
Identifies the object file type. A value of 1, that has the name ET_REL, specifies a relocatable file. Table 3-1 describes all the object file types.

e_machine
Specifies the required architecture for an individual file. A value of 3, that has the name EM_386, specifies Intel 80386. EM_486, specifies Intel 80486.

e_version
Identifies the version of this object file's format. This field should have the current version number, named EV_CURRENT.

e_entry
Virtual address where the process is to start. A value of 0 indicates no associated entry point.

e_phoff
Program header table's file offset, in bytes. The value of 0 indicates no program header. (Relocatable files do not need a program header table.)

e_shoff
Section header table's file offset, in bytes. The value of 0 indicates no section header table. (Relocatable files must have a section header table.)

e_flag
Processor-specific flags associated with the file. For the Intel 80386, this field has value 0.

e_ehsize
ELF header's size, in bytes.

e_phentsize
Size, in bytes, of entries in the program header table. All entries are the same size. (Relocatable files do not need a program header table.)

e_phnum
Number of entries in program header table. A value of 0 indicates the file has no program header table. (Relocatable files do not need a program header table.)

e_shentsize
Size, in bytes, of the section header structure. A section header is one entry in the section header table; all entries are the same size.

e_shnum
Number of entries in section header table. A value of 0 indicates the file has no section header table. (Relocatable files must have a section header table.)

e_shstrndx
Section header table index of the entry associated with the section name string table. A value of SHN_UNDEF indicates the file does not have a section name string table.
*/