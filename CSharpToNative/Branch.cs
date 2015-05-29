using System;
using System.Collections.Generic;
using System.Linq;

namespace Native.CSharp.Compiler
{
    public class Branch
    {
        //protected struct properties
        //{
        //    string name;
        //    EnumTypes type;
        //    EnumAccessModifiers protectionlevel;
        //    object Value;
        //}
        private readonly List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "#++", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
        private readonly List<string> keywords = new List<string>(new string[] { "public", "protected", "private", "const", "volatile", "unsigned", "unsafe", "new", "continue", "break", "for", "if", "else", "else if", "while", "do", "class", "enum", "interface", "private static", "void", "readonly" });
        private readonly List<string> types = new List<string>(new string[] { "int", "string", "bool", "double", "float", "long", "short", "byte", "char", "decimal", "date", "single", "object" });

        private string name;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
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
            int currenttoken = 0;
            if (tokens == null)
                return;
            if (keywords.Contains(tokens[currenttoken].ToLower()))
            {
                int index = keywords.IndexOf(tokens[currenttoken].ToLower());
                this.protectionlevel = (EnumAccessModifiers)index;
                currenttoken++;
            }
            else
                this.protectionlevel = EnumAccessModifiers.NO_MODIFIER;
            //this.protectionlevel = (EnumAccessModifiers) Enum.Parse(typeof(EnumAccessModifiers), tokens[0].ToUpper());
            if (types.Contains(tokens[currenttoken]))
            {
                int index = types.IndexOf(tokens[currenttoken].ToLower());
                this.type = (EnumTypes)index;
                currenttoken++;
            }
            else
                this.type = EnumTypes.NO_TYPE;
            this.name = tokens[currenttoken];
            currenttoken++;

            if (operators.Contains(tokens[currenttoken].ToLower()))
            {
                int index = operators.IndexOf(tokens[currenttoken].ToLower());
                this.operation = (EnumOperator)index;
            }
            else
                operation = EnumOperator.NO_OPERATOR;
            this.Value = tokens[currenttoken];
            currenttoken++;
            //this.protectionlevel = (EnumAccessModifiers)Convert.ToInt32(tokens[0]);
            //this.type = ((EnumTypes)Convert.ToInt32(tokens[1]));
            //this.name = tokens[2];
            //this.operation = (EnumOperator)Convert.ToInt32(tokens[3]);
            //this.Value = tokens[4];
        }

        public static EnumAccessModifiers getaccessmodifier(Branch branch)
        {
            return branch.Protectionlevel;
        }

        public static EnumTypes gettype(Branch branch)
        {
            return branch.Type;
        }

        public static string getname(Branch branch)
        {
            return branch.name;
        }

        public static object getvalue(Branch branch)
        {
            return branch.Value1;
        }

        public EnumOperator getoperator()
        {
            return this.Operation;
        }

        public EnumAccessModifiers getaccessmodifier()
        {
            return this.Protectionlevel;
        }

        public EnumTypes gettype()
        {
            return this.Type;
        }

        public string getname()
        {
            return this.name;
        }

        public object getvalue()
        {
            return this.Value1;
        }

        public static EnumOperator getoperator(Branch branch)
        {
            return branch.Operation;
        }


        protected static Branch Union(Branch lhs, Branch rhs)  // merge branches together
        {
            if (lhs.Equals(rhs)) // if the branches are equal dont merge them
            {
                return lhs;
            }
            else
            {
                if (lhs.gettype() != rhs.gettype()) // if the two barnches are not the same type
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

        protected Branch Union(Branch rhs)  // merge branches together
        {
            if (this.Equals(rhs)) // if the branches are equal dont merge them
            {
                return this;
            }
            else
            {
                if (this.gettype() != rhs.gettype()) // if the two barnches are not the same type
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
                    newbranch.Type = this.Type;
                    newbranch.name = this.name;
                    newbranch.Protectionlevel = rhs.Protectionlevel;
                    newbranch.Value1 = Convert.ToInt32(this.Value1) + Convert.ToInt32(rhs.Value1); // merge the two values
                    return newbranch; // return the merged branch
                }
            }
        }
    }
}