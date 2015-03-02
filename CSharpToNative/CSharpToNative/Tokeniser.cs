// Tokeniser for C#
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

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

        public bool Start()
        {
            //bool error = false;
            if (CheckForErrors())
            {
                return false;
            }
            else if (!CheckForKeywords())
            {
                return false;
            }
            else if (!CheckForTypes())
            {
                return false;
            }
            else if (!CheckForOperators())
            {
                return false;
            }
            return true;
        }

        private bool CheckForTypes() // TODO add user typedefs
        {
            List<EnumTypes> typedefs = new List<EnumTypes>();
            string[] temptokens;
            for (int i = 0; i < lines.Length; i++)
            {
                for (int j = -0; j < types.Count; j++)
                {
                    if ((lines[i].Contains(types[j]))) // if the line contains the type at index j
                    {
                        typedefs.Add((EnumTypes)j); // add it to the list of found types
                        temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray(); // define splitting characters and split the line into tokens
                        for (int str = -0; str < temptokens.Length; str++)
                        {
                            Console.WriteLine("lhs " + str + " = " + temptokens[str]);
                        }
                    }
                }
            }
            return (typedefs.Count > 0) ? true : false; // return true if we found a type false if we did not
        }

        private bool CheckForOperators()
        {
            List<EnumOperator> ops = new List<EnumOperator>();
            string[] temptokens;
            for (int i = 0; i < lines.Length; i++)
            {
                for (int j = 0; j < operators.Count; j++)
                {
                    if (lines[i].Contains(operators[j])) // if the current line contains the operator at index j
                    {
                        // cops++; // increment the amount of operators found
                        //lhs = string.Split(new string[] { operators[j] } , 5 , StringSplitOptions.RemoveEmptyEntries)));
                        ops.Add((EnumOperator)j); // add it to the list of found operators
                        temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray(); // define splitting characters and split the line into tokens
                        for (int str = -0; str < temptokens.Length; str++)
                        {
                            Console.WriteLine("lhs " + str + "= " + temptokens[str]);
                        }
                    }
                }
            }
            return (ops.Count > 0) ? true : false; // return true if we found an operator false if we did not
        }

        private bool CheckForKeywords()
        {
            int ckeywords = 0; // the amount of keywords that we have found
            bool accessmodifier = false; // does the line contain an access modifier
            string[] temptokens;
            List<EnumKeywords> kywrds = new List<EnumKeywords>();
            for (int i = 0; i < lines.Length; i++)
            {
                for (int j = 0; j < keywords.Count; j++) // check for each valid keyword
                {
                    if (lines[i].Contains(keywords[j])) // if the line contains the keyword at index j
                    {
                        if (j <= 2 && !accessmodifier) // if j <= 2 (is an access modifier) and we have not yet found one
                        {
                            accessmodifier = true; // we have found an access modifier
                        }
                        else if (j <= 2 && accessmodifier) // if j <= 2 (is an access modifier) and we have found one
                        {
                            Console.Error.WriteLine("ERROR Too many access modifiers"); // throw an error
                            Environment.Exit(-1);
                        }

                        ckeywords++; // increment the number of found keywords
                        //lhs = string.Split(new string[] { operators[j] } , 5 , StringSplitOptions.RemoveEmptyEntries)));
                        kywrds.Add((EnumKeywords)j); // add it to the list of found keywords
                        temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray(); // define splitting characters and split the line into tokens
                        for (int str = -0; str < temptokens.Length; str++)
                        {
                            Console.WriteLine("lhs " + str + "= " + temptokens[str]);
                        }
                    }
                }
            }

            for (int k = 0; k < kywrds.Count; k++)
            {
                Console.WriteLine(Convert.ToString(kywrds.ElementAt<EnumKeywords>(k)));
            }
            return (ckeywords > 0) ? true : false; // return true if we found a keyword false if we did not
        }

        private bool CheckForErrors()
        {
            for (int i = 0; i < lines.Length; i++)
            {
                if (!lines[i].EndsWith(";"))
                {
                    return true;
                }
                //else if(...)
            }
            return false;
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