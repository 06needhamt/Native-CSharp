// Tokeniser for C#
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace CSharpToNative
{
    internal class Tokeniser
    {
        private StreamWriter writer;
        private readonly string filepath;
        private readonly string filename;
        private readonly string directory;
        private LinkedList<Token> tokens;
        private readonly string[] lines;
        private readonly List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "#++", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
        private readonly List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void", "readonly" });
        private readonly List<string> types = new List<string>(new string[] { "int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });
        
        public Tokeniser(string directory, string name)
        {
            this.directory = directory;
            this.filename = name;
            this.filepath = directory + "/" + name;
            this.writer = new StreamWriter(this.filepath, false);
            this.tokens = new LinkedList<Token>();
            this.lines = File.ReadAllLines(this.filepath);
            Console.Error.WriteLine("Tokeniser sucessfully constructed");

        }

        public StreamWriter getWriter()
        {
            return this.writer;
        }

        public string getFilePath()
        {
            return this.filepath;
        }

        public string getFileName()
        {
            return this.filename;
        }

        public string getDirectory()
        {
            return this.directory;
        }

        public LinkedList<Token> getTokens()
        {
            return this.tokens;
        }

        public string[] getLines()
        {
            return this.lines;
        }

    }
}
