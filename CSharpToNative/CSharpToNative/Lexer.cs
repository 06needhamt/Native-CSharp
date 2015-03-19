using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace CSharpToNative
{
    public class Lexer
    {
        //public string[] pubtokens;
        public List<string[]> pubtokenslist = new List<string[]>(0);

        private readonly List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "#++", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
        private readonly List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void", "readonly" });
        private readonly List<string> types = new List<string>(new string[] { "int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });
        private string[] lines;
        private List<EnumOperator> ops = new List<EnumOperator>(0);
        private List<EnumKeywords> kywrds = new List<EnumKeywords>(0);
        private List<EnumTypes> typedefs = new List<EnumTypes>(0);
        private List<string> usertypedefs = new List<string>(0);
        private StreamWriter writer;
        private string[] temptokens;  // tokens from each checking stage are stored here
        private bool isafunction = false;
        private LinkedList<Tuple<string, string, string>> integersymboltable = new LinkedList<Tuple<string, string, string>>();
        private LinkedList<Tuple<string, string, string>> stringsymboltable = new LinkedList<Tuple<string, string, string>>();
        private LinkedList<string[]> functionsymboltable = new LinkedList<string[]>();
        private List<string> functionnams = new List<string>();
        private bool isbracket = false;

        public Lexer(ref string[] linespar, StreamWriter writerpar)
        {
            lines = linespar;
            writer = writerpar;
        }

        public void Start(ref int i)
        {
            //lines = linespar;
            //writer = writerpar;

            if (string.IsNullOrEmpty(lines[i])) // if the line is null skip it
            {
                return;
            }
            else if (lines[i].Equals("{") || lines[i].Equals("}")) // if the line is a brace write it to the file and return
            {
                writer.WriteLine(lines[i]);
                return;
            }
            if (lines[i].Contains('\t'))
            {
                while (lines[i].StartsWith("\t"))
                {
                    lines[i] = lines[i].Remove(0, 1);
                    Console.WriteLine(lines[i]);
                }
            }
            if (!lines[i].EndsWith(";"))
            {
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.Error.Write("ERROR : Expected a ; ");
                Console.Error.WriteLine(lines[i]);
                Console.ResetColor();
                //Console.ReadKey();
            }
            getFunctionNames();
            if (!checkkeywords(ref i) && !checkoperators(ref i) && !checktypes(ref i)) // if the line has no keywords operators or types it must be an error
            {
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.Error.Write(lines[i] + " ");
                Console.Error.WriteLine("Invalid Input");
                Console.ResetColor();
                
                //Console.ReadKey();
            }
            // System.Threading.Thread.Sleep(100);
            Console.WriteLine(checktypes(ref i)); // check the current line for types
            // System.Threading.Thread.Sleep(100);
            Console.WriteLine(checkkeywords(ref i)); // check the current line for keywords
            // System.Threading.Thread.Sleep(100);
            Console.WriteLine(checkoperators(ref i)); // check the current line for operators
            // System.Threading.Thread.Sleep(100);

            printTokens(temptokens); // tokenize the checked line and print it to the file
            writer.WriteLine();
        }

        public int CheckBrackets()
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
                return 1;
            }
            else if ((opensquarebracket - closesquarebracket != 0))
            {
                return 2;
            }
            else if ((opencurlybracket - closecurlybracket != 0))
            {
                return 3;
            }
            return -1;
        }

        private bool checkoperators(ref int i)
        {
            int cops = 0; // amount of operators found in the current line
            for (int j = 0; j < operators.Count; j++)
            {
                if (lines[i].Contains(operators[j])) // if the current line contains the operator at index j
                {
                    cops++; // increment the amount of operators found
                    //lhs = string.Split(new string[] { operators[j] } , 5 , StringSplitOptions.RemoveEmptyEntries)));
                    ops.Add((EnumOperator)j); // add it to the list of found operators
                    temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray(); // define splitting characters and split the line into tokens
                    for (int str = -0; str < temptokens.Length; str++)
                    {
                        Console.WriteLine("lhs " + str + "= " + temptokens[str]);
                    }
                }
            }

            //for (int k = 0; k < ops.Count; k++)
            //{
            //    Console.WriteLine(Convert.ToString(ops.ElementAt<EnumOperator>(k)));
            //}
            ops.Clear(); // empty the list of operators
            return (cops > 0) ? true : false; // return true if we found an operator false if we did not
        }

        private bool checkkeywords(ref int i)
        {
            int ckeywords = 0; // the amount of keywords that we have found
            bool accessmodifier = false; // does the line contain an access modifier
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

            for (int k = 0; k < kywrds.Count; k++)
            {
                Console.WriteLine(Convert.ToString(kywrds.ElementAt<EnumKeywords>(k)));
            }
            kywrds.Clear();
            return (ckeywords > 0) ? true : false; // return true if we found a keyword false if we did not
        }

        private bool checktypes(ref int i) // TODO add user typedefs
        {
            int ctypes = 0; // the number of types we have found
            for (int j = -0; j < types.Count; j++)
            {
                if ((lines[i].Contains(types[j]))) // if the line contains the type at index j
                {
                    ctypes++; // increment the number of types found
                    typedefs.Add((EnumTypes)j); // add it to the list of found types
                    temptokens = StringManipulation.HandMadeSplit(lines[i]).ToArray(); // define splitting characters and split the line into tokens
                    for (int str = -0; str < temptokens.Length; str++)
                    {
                        Console.WriteLine("lhs " + str + " = " + temptokens[str]);
                    }
                }
            }
            typedefs.Clear();
            return (ctypes > 0) ? true : false; // return true if we found a type false if we did not
        }

        private bool isvardeclared(ref string[] tokens, ref int i) // function for checking if a variable is declared
        {
            string type = tokens.FirstOrDefault<string>(j => types.Contains(j)); // string to hold the type of a variable
            if (string.IsNullOrEmpty(tokens[i]) || tokens[i].Equals("{") || tokens[i].Equals("{")) // if the variable is a bracket skip it
            {
                isbracket = true;
                return true;
            }
            if ((Object)type == null && i < tokens.Length - 1) // if the token is not a variable (does not have a type)
            {
                int iref = i; // keep i for future reference
                for (int m = 0; m < tokens.Length; m++)
                {
                    Console.WriteLine(tokens[m]);
                }
                // Console.ReadKey();
                iref++; // increment iref so i points to the next token
                isvardeclared(ref tokens, ref iref); // recursively call this function until we have reached the end of the array
                if (isbracket) //if the token was a bracket return true;
                {
                    return true;
                }
                if (type == null) // if the token is not a variable return true
                {
                    return true;
                }
                if (type.Equals("string")) // if the token was a variable of type string
                {
                    // System.Threading.Thread.Sleep(50);
                    return (stringsymboltable.Contains(new Tuple<string, string, string>(tokens[i], tokens[i + 1], tokens[i + 2])) ? true : false);
                    // if the variable is in the symbol table return true else return false
                }
                else if (type.Equals("int"))
                {
                    //Tuple<string> j  = new Tuple<string>("j");
                    // System.Threading.Thread.Sleep(50);

                    return (integersymboltable.Contains(new Tuple<string, string, string>(tokens[i], tokens[i + 1], tokens[i + 2])) ? true : false);
                    // if the variable is in the symbol table return true else return false
                }
                else
                {
                    // if we get here the variable type is not yet implemented
                    System.Threading.Thread.Sleep(50);
                    return false;
                }
            }
            else
            {
                System.Threading.Thread.Sleep(50);
                // if we get here the variable type is not declared
                return false;
            }
        }

        private bool checkisafunction(ref string[] tokens, ref int i)
        {
            // is the current line a function
            // Currently not working
            return (tokens.Contains("(") && tokens.Contains(")")) ? true : false;
        }

        public bool isInteger(String str)
        {
            if (str == null)
            {
                return false;
            }
            int length = str.Length;
            if (length == 0)
            {
                return false;
            }
            int i = 0;
            if (str.ElementAt(0) == '-')
            {
                if (length == 1)
                {
                    return false;
                }
                i = 1;
            }
            for (; i < length; i++)
            {
                char c = str.ElementAt(i);
                if (c <= '/' || c >= ':')
                {
                    return false;
                }
            }
            return true;
        }

        private void printTokens(string[] tokens)  // function to print tokens
        {
            int index; // int to store the index of the current token in reference arrays
            //bool keyword = false;
            //pubtokens = tokens; // create a publically acessable copy of the tokens for later

            pubtokenslist.Add(tokens); // add the current tokens to a publically accessable list for later
            writer.WriteLine("START");
            for (int i = 0; i < tokens.Length; i++)
            {
                bool negated = false;
                Console.WriteLine(isInteger(tokens[i]));
                if (isInteger(tokens[i]))
                {
                    Console.WriteLine(Convert.ToInt32(tokens[i]));
                }
                if (isInteger(tokens[i]) && Convert.ToInt32(tokens[i]) < 0)
                {
                    int negatedToken = (Convert.ToInt32(tokens[i])) * -1;
                    tokens[i] = Convert.ToString(negatedToken);
                    negated = true;
                }
                if (keywords.Contains<string>(tokens[i])) // if the current token is equal to a valid keyword
                {
                    //keyword = true;
                    index = keywords.IndexOf(tokens[i]); // store the index of where the keyword is stored
                    writer.Write((EnumKeywords)index); // look up the index in the Keywords enumerator and write it to the file
                    Console.WriteLine((EnumKeywords)index);
                    writer.Write(','); // write a seperating comma
                    continue;
                }
                else if (operators.Contains<string>(tokens[i])) // do the same for operators
                {
                    index = operators.IndexOf(tokens[i]);
                    Console.WriteLine((EnumOperator)index);
                    writer.Write((EnumOperator)index);
                    writer.Write(',');
                }
                else if (types.Contains<string>(tokens[i]))
                {
                    index = types.IndexOf(tokens[i]); // get the index of the type of the token
                    if ((EnumTypes)index == EnumTypes.INT) // if it is of type int
                    {
                        //integersymboltable.AddLast(new Tuple<string,string,string>(tokens[i - 1], tokens[i], tokens[i + 1])); // add it to the integer symbol table
                        for (int j = 0; j < integersymboltable.Count; j++)
                        {
                            Console.WriteLine(integersymboltable.ElementAt<Tuple<string, string, string>>(j));
                            //Console.ReadKey();
                        }
                    }
                    else if ((EnumTypes)index == EnumTypes.STRING) // do the same for strings
                    {
                        //stringsymboltable.AddLast(new Tuple<string,string,string>(tokens[i - 1], tokens[i], tokens[i + 1]));
                        for (int j = 0; j < stringsymboltable.Count; j++)
                        {
                            Console.WriteLine(stringsymboltable.ElementAt<Tuple<string, string, string>>(j));
                            //Console.ReadKey();
                        }
                    }
                    else  // if we are here the type does not match the token or the type is not yet implemented
                    {
                        try
                        {
                            throw new TypeMismatchException(" FATAL ERROR " + tokens[i] + "Is the incorrect type for this variable");
                        }
                        catch (TypeMismatchException ex2)
                        {
                            Console.WriteLine(ex2.Message);
                            Environment.Exit(-1);
                        }
                    }
                    Console.WriteLine((EnumTypes)index);
                    writer.Write((EnumTypes)index);
                    writer.Write(',');
                }
                else if (tokens[i].Equals(" ") || tokens[i].Equals("") || tokens[i].Equals(null)) // if the token is whitespace skip it
                {
                    continue;
                }
                else if (System.Text.RegularExpressions.Regex.IsMatch(tokens[i], "([0-9])")) // if the token is numerical
                {
                    if (negated)
                    {
                        int realToken = (Convert.ToInt32(tokens[i])) * -1;
                        tokens[i] = Convert.ToString(realToken);
                        negated = false;
                    }
                    writer.Write("INTVALUE(" + tokens[i] + ")"); // write it to the file with an INTVALUE tag
                    continue;
                }
                else if (tokens[i].Equals("\n")) // if it is a new line get the next token
                {
                    return;
                }
                else if (!System.Text.RegularExpressions.Regex.IsMatch(tokens[i], "([0-9])")) // if the token is something else
                {
                    Console.WriteLine("Tokens i =  " + tokens[i]);
                    if (tokens[i].StartsWith("\"") && tokens[i].EndsWith("\""))
                    {
                        writer.Write("STRINGVALUE(" + tokens[i] + ")"); // it must be a string literal so give it a STRINGVALUE tag
                        continue;
                    }
                    else if (tokens[i].StartsWith("\"") && !tokens[i].EndsWith("\""))
                    {
                        writer.Write("STRINGVALUE(" + tokens[i]); // it must be a string literal so give it a STRINGVALUE tag
                        while (!tokens[i].EndsWith("\""))
                        {
                            i++;
                            writer.Write(" ");
                            writer.Write(tokens[i]);
                        }
                        writer.Write(")");
                        continue;
                    }
                    if ((tokens[0].Equals(EnumKeywords.PRIVATE.ToString().ToLower()) || tokens[0].Equals(EnumKeywords.PUBLIC.ToString().ToLower()) || tokens[0].Equals(EnumKeywords.PROTECTED.ToString().ToLower())) /*&& !isvardeclared(ref tokens,ref i)*/)
                    // if it has an access modifier
                    {
                        defineVariable(ref tokens, ref i); // try and define a variable
                        writer.Write(tokens[i]); // if it is write it to the file with a seperating comma
                        writer.Write(',');
                        continue;
                    }
                    if (isvardeclared(ref tokens, ref i)) // otherwise check if it is already defined
                    {
                        //writer.Write(tokens[i]); // if it is write it to the file with a seperating comma
                        //writer.Write(',');
                        //writer.Write("STRINGVALUE(" + tokens[i] + ")"); // it must be a string literal so give it a STRINGVALUE tag
                        // writer.Write(',');
                    }
                    else
                    {
                        isafunction = checkisafunction(ref tokens, ref i); // if not it must be a function so check if it is
                        if (isafunction) // if it is a function
                        {
                            string[] funcsplit = StringManipulation.HandMadeSplit(tokens[i]).ToArray();

                            if (!functionsymboltable.Contains(funcsplit)) // if the function is not in the symbpl table
                            {
                                functionsymboltable.AddLast(funcsplit); // add it to the symbol table
                                for (int j = 2; j < funcsplit.Length; j++)
                                {
                                    writer.Write(funcsplit[j]); // and write it to the file
                                }
                            }
                            else
                            {
                                //functionsymboltable.Add(new Tuple<string, string>(funcsplit[0], funcsplit[1]));
                                //Console.WriteLine(functionsymboltable.ElementAt<Tuple<string, string>>(0));
                                writer.Write("STRINGVALUE(" + tokens[i] + ")"); // it must be a string literal so give it a STRINGVALUE tag
                                // writer.Write(',');
                                continue;
                            }
                        }
                        else
                        {
                            Console.ForegroundColor = ConsoleColor.Magenta;
                            Console.WriteLine("Fatal Error " + tokens[i] + " Is not Declared");
                            Console.ResetColor();
                            return;
                        }
                    }
                    //writer.Write(',');
                }
                else
                {
                    writer.Write("STRINGVALUE(" + tokens[i] + ")"); // it must be a string literal so give it a STRINGVALUE tag
                    // writer.Write(',');
                }
            }
            writer.WriteLine();
            writer.WriteLine("END"); // mark the end of the line
        }

        private void defineVariable(ref string[] tokens, ref int i) // function to define variables
        {
            //EnumTypes type;
            string prot = tokens[0];
            string name = tokens[i]; // copy the name from the tokens
            string value;
            tokens = tokens.Where(x => !string.IsNullOrEmpty(x) || x.Equals("\n")).ToArray();
            if (i + 2 > tokens.Length - 1)
            {
                value = tokens.ElementAt(tokens.Length - 1);
            }
            else
            {
                value = tokens[i + 2];
            }
            if (tokens[i - 1].Equals(EnumTypes.INT.ToString().ToLower())) // if it is of type int
            {
                integersymboltable.AddLast(new Tuple<string, string, string>(prot, name, value)); // add it to the int symbol table
                //writer.Write(name); // write the name to the file
                //writer.Write(','); // and a seperating comma
                return;
            }
            else if (tokens[i - 1].Equals(EnumTypes.STRING.ToString().ToLower())) // if it is of type string
            {
                stringsymboltable.AddLast(new Tuple<string, string, string>(prot, name, value)); // add it to the string symbol table
                //writer.Write(name); // write the name to the file
                //writer.Write(','); // and a seperating comma
                return;
            }
            else // if we are here it must be a function or a non implemented type
            {
                isafunction = checkisafunction(ref tokens, ref i); // check if it is a function

                if (isafunction) // if it is a function
                {
                    //parse parameters not working yet
                    List<char[]> partype = new List<char[]>(0);
                    char[] partypechararr;
                    string[] partypearr;
                    if (tokens.Contains<string>(EnumTypes.INT.ToString().ToLower()))
                    {
                        for (int j = 0; j < tokens.Length; j++)
                        {
                            if (tokens[j] == EnumTypes.INT.ToString().ToLower())
                            {
                                partypearr = tokens[i].Split(tokens, 1, StringSplitOptions.RemoveEmptyEntries);
                                foreach (string str in partypearr)
                                {
                                    partype.Add(str.ToCharArray());
                                }
                            }
                        }
                    }
                    return;
                    //char[] partype;

                    string[] funcsplit = StringManipulation.HandMadeSplit(tokens[i]).ToArray();

                    for (int m = 0; m < funcsplit.Length; m++)
                    {
                        Console.WriteLine(funcsplit[m]);
                        Console.ReadKey();
                    }

                    if (!functionsymboltable.Contains(funcsplit)) // if it is not in the symbol table
                    {
                        functionsymboltable.AddLast(funcsplit); // add it
                        for (int m = 0; m < funcsplit.Length; m++)
                        {
                            Console.WriteLine(funcsplit[m]);
                            Console.ReadKey();
                        }
                        if (string.IsNullOrWhiteSpace(functionsymboltable.ElementAt(i)[1])) // if it has no parameters
                        {
                            funcsplit[1] = EnumKeywords.VOID.ToString(); // write void between the parenthasis
                        }
                        //functionsymboltable.AddLast(new string[] { funcsplit[0], funcsplit[1] });
                        writer.Write(funcsplit[0] + "(" + funcsplit[1] + ")"); // write the function to the file
                        writer.Write(','); // and a seperating comma
                    }
                    else // just write it to the file
                    {
                        //functionsymboltable.AddLast(new string[] {funcsplit[0], funcsplit[1]} );
                        //Console.WriteLine(functionsymboltable.ElementAt<Tuple<string, string>>(0));
                        for (int j = 0; i < funcsplit.Length; j++)
                        {
                            writer.Write(funcsplit[j]);
                            writer.Write(',');
                        }

                        return;
                    }
                }
            }
        }

        public dynamic getintsymboltable()
        {
            return integersymboltable;
        }

        public dynamic getstringsymboltable()
        {
            return stringsymboltable;
        }

        public dynamic getfunctionsymboltable()
        {
            return functionsymboltable;
        }
        public List<string> getFunctionNames()
        {
            foreach (string[] s in this.functionsymboltable)
            {
                for (int i = 0; i < s.Length; i++)
                {
                    Console.Error.WriteLine(s[i]);
                }
            }
            return new List<string>();
        }

        public void SaveSymbolTables(int id)
        {
            switch (id)
            {
                // TODO Save Symbol Tables
            }
        }
    }
}