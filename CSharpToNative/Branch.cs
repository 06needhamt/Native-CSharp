using System;
using System.Collections.Generic;
using System.Linq;
namespace Native.CSharp.Compiler
{
    public class Branch
    {
        struct properties
        {
            string name;
            EnumTypes type;
            EnumAccessModifiers protectionlevel;
            object Value;
        }
        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        private readonly List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "#++", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
        private readonly List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void", "readonly" });
        private readonly List<string> types = new List<string>(new string[] { "int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });
        private EnumTypes type;

        public EnumTypes Type
        {
            get { return type; }
            set { type = value; }
        }
        private EnumAccessModifiers protectionlevel;

        public EnumAccessModifiers Protectionlevel
        {
            get { return protectionlevel; }
            set { protectionlevel = value; }
        }
        private EnumOperator operation;

        public EnumOperator Operation
        {
            get { return operation; }
            set { operation = value; }
        }
        private object Value;

        public object Value1
        {
            get { return Value; }
            set { Value = value; }
        }
        private object value2 = null;

        public object Value2
        {
            get { return value2; }
            set { value2 = value; }
        }
        private EnumOperator operation2 = EnumOperator.NO_OPERATOR;

        public EnumOperator Operation2
        {
            get { return operation2; }
            set { operation2 = value; }
        }
        private Branch parent = null;

        public Branch Parent
        {
            get { return parent; }
            set { parent = value; }
        }
        ///public long depth;

        public Branch()
        {
        }

        public Branch(string[] tokens) // set tree variables from passed tokens
        {
            if (tokens == null)
                return;
            if (keywords.Contains(tokens[0].ToLower()))
            {
                int index = keywords.IndexOf(tokens[0].ToLower());
                this.protectionlevel = (EnumAccessModifiers)index;
            }
            else
                this.protectionlevel = EnumAccessModifiers.NO_MODIFIER;
            //this.protectionlevel = (EnumAccessModifiers) Enum.Parse(typeof(EnumAccessModifiers), tokens[0].ToUpper());
            this.type = (EnumTypes)Enum.Parse(typeof(EnumTypes), tokens[1].ToUpper());
            this.name = tokens[2];
            if (operators.Contains(tokens[3].ToLower()))
            {
                int index = operators.IndexOf(tokens[3].ToLower());
                this.operation = (EnumOperator)index;
            }
            else
                operation = EnumOperator.NO_OPERATOR;
            this.Value = tokens[4];
            //this.protectionlevel = (EnumAccessModifiers)Convert.ToInt32(tokens[0]);
            //this.type = ((EnumTypes)Convert.ToInt32(tokens[1]));
            //this.name = tokens[2];
            //this.operation = (EnumOperator)Convert.ToInt32(tokens[3]);
            //this.Value = tokens[4];
        }

        private EnumAccessModifiers getaccessmodifier(Branch branch)
        {
            return branch.Protectionlevel;
        }

        private EnumTypes gettype(Branch branch)
        {
            return branch.Type;
        }

        private string getname(Branch branch)
        {
            return branch.name;
        }

        private object getvalue(Branch branch)
        {
            return branch.Value1;
        }

        private EnumOperator getoperator(Branch branch)
        {
            return branch.Operation;
        }

        protected Branch Union(Branch lhs, Branch rhs)  // merge branches together
        {
            if (lhs.Equals(rhs)) // if the branches are equal dont merge them
            {
                return lhs;
            }
            else
            {
                if (lhs.gettype(lhs) != rhs.gettype(rhs)) // if the two barnches are not the same type
                {
                    try
                    {
                        throw new TypeMismatchException(); // throw an exception
                    }
                    catch (TypeMismatchException ex)
                    {
                        Console.ForegroundColor = ConsoleColor.DarkRed;
                        Console.WriteLine(ex.GetType());
                        Console.WriteLine(ex.Message);
                        Console.WriteLine(ex.StackTrace);
                        Console.ResetColor();
                    }
                    finally
                    {
                        Console.ForegroundColor = ConsoleColor.Magenta;
                        Console.WriteLine("A FATAL ERROR HAS OCCURED IN UNION OF BRANCHES: TYPES DO NOT MATCH EXITING");
                        Console.ResetColor();
                        // System.Threading.Thread.Sleep(2500);
                        Environment.Exit(-1);
                    }
                    return null;
                }
                else // go ahead and merge the branches
                {
                    Branch newbranch = new Branch(); // create a new branch
                    newbranch.Type = lhs.Type;
                    newbranch.name = lhs.name;
                    newbranch.Protectionlevel = rhs.Protectionlevel;
                    newbranch.Value1 = Convert.ToInt32(lhs.Value1) + Convert.ToInt32(rhs.Value1); // merge the two values
                    return newbranch; // return the merged branch
                }
            }
        }
    }
}