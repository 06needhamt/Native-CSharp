using System.IO;

namespace Linker
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            LinkExecutable exe = new LinkExecutable();
            BinaryReader read = new BinaryReader(File.OpenRead(args[0]));
            exe.ReadELF(read);
        }
    }
}