using System;
using System.IO;

namespace Linker
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            GetVersionNumber();
           // Console.ReadKey();
            LinkExecutable exe = new LinkExecutable();
            BinaryReader read = new BinaryReader(File.OpenRead(args[0]));
            exe.ReadELF(args[0], read);
        }

        private static string GetVersionNumber()
        {
            var CurrentAssembly = System.Reflection.Assembly.GetExecutingAssembly();
            string VersionNumber = CurrentAssembly.GetName().Version.ToString();
            Console.Error.WriteLine(VersionNumber);
            return VersionNumber;
        }
    }
}