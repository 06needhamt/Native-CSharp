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
        private int bracketstatus;
        public Tokeniser(string directory, string name)
        {
            this.directory = directory;
            this.filename = name;
            this.filepath = directory + "/" + name;
            this.writer = new StreamWriter(this.filepath + ".tokens", false);
            this.tokens = new LinkedList<Token>();
            this.lines = File.ReadAllLines(this.filepath);
            Console.Error.WriteLine("Tokeniser sucessfully constructed");
        }

        public bool Start()
        {
            //bool error = false;
            CheckForFunctions();
            //if (CheckForErrors())
            //{
            //    Destroy();
            //    return false;
            //}
            //else if (!CheckForKeywords())
            //{
            //    Destroy();
            //    return false;
            //}
            //else if (!CheckForTypes())
            //{
            //    Destroy();
            //    return false;
            //}
            //else if (!CheckForOperators())
            //{
            //    Destroy();
            //    return false;
            //}
            Destroy();
            return true;
        }
        public void Destroy()
        {
            writer.Flush();
            writer.Close();
            writer.Dispose();
        }

        private bool CheckForFunctions()
        {
            string[] temptokens;
            for(int i = 0; i < lines.Length; i++)
            {
                temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray();
                for(int j = 0; j < temptokens.Length; j++)
                {
                    Console.Error.WriteLine("Tokens " + j + " = "  + temptokens[j]);
                }
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
                bracketstatus = CheckBrackets();
                if (!lines[i].EndsWith(";"))
                {
                    return true;
                }
                else if(bracketstatus != 0)
                {
                    FindBracketErrorCause(i,bracketstatus);
                    return true;
                }
                //else if(...)
            }
            return false;
        }

        private string FindBracketErrorCause(int line, int code)
        {
            BracketErrorHandler breh = new BracketErrorHandler(code, 0, 0, line);
            if (breh.getError().Equals("No Error"))
            {
                return string.Empty;
            }
            else
            {
                return breh.getError();
            }

        }

        private int CheckBrackets()
        {
            int openbracket = 0;
            int closebracket = 0;
            int opensquarebracket = 0;
            int closesquarebracket = 0;
            int opencurlybracket = 0;
            int closecurlybracket = 0;
            List<Tuple<int, int>> bracketloc = new List<Tuple<int, int>>();
            Console.ForegroundColor = ConsoleColor.Magenta;
            for (int i = 0; i < lines.Length; i++)
            {
                List<char> chars = lines[i].ToList<char>();
                foreach (char c in chars)
                {
                    switch (c)
                    {
                        case '(':
                            {
                                openbracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        case ')':
                            {
                                closebracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        case '[':
                            {
                                opensquarebracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        case ']':
                            {
                                closesquarebracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        case '{':
                            {
                                opencurlybracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        case '}':
                            {
                                closecurlybracket++;
                                bracketloc.Add(new Tuple<int, int>(i, chars.IndexOf(c)));
                                break;
                            }
                        default:
                            {
                                continue;
                            }
                    }
                }
            }
            Console.ResetColor();
            if ((openbracket - closebracket == 0) && (opensquarebracket - closesquarebracket == 0) && (opencurlybracket - closecurlybracket == 0))
            {
                return 0;
            }
            else if ((openbracket - closebracket) != 0)
            {
                if(openbracket > closebracket)
                {
                    return 2;
                }
                return 1;
            }
            else if ((opensquarebracket - closesquarebracket != 0))
            {
                if(opensquarebracket > closesquarebracket)
                {
                    return 3;
                }
                return 4;
            }
            else if ((opencurlybracket - closecurlybracket != 0))
            {
                if(opencurlybracket > closecurlybracket)
                {
                    return 5;
                }
                return 6;
            }
            return -1;
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
