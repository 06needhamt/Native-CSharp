﻿using System;

namespace CSharpToNative
{
    public class Branch
    {
        //struct properties
        //{
        //    string name;
        //    EnumTypes type;
        //    EnumAccessModifiers protectionlevel;
        //    object Value;
        //}
        public string name;

        public EnumTypes type;
        public EnumAccessModifiers protectionlevel;
        public EnumOperator operation;
        public object Value;
        public object value2 = null;
        public EnumOperator operation2 = EnumOperator.NO_OPERATOR;
        public Branch parent = null;
        ///public long depth;

        public Branch()
        {
        }

        public Branch(string[] tokens) // set tree variables from passed tokens
        {
            this.protectionlevel = (EnumAccessModifiers)Convert.ToInt32(tokens[0]);
            this.type = ((EnumTypes)Convert.ToInt32(tokens[1]));
            this.name = tokens[2];
            this.operation = (EnumOperator)Convert.ToInt32(tokens[3]);
            this.Value = tokens[4];
        }

        private EnumAccessModifiers getaccessmodifier(Branch branch)
        {
            return branch.protectionlevel;
        }

        private EnumTypes gettype(Branch branch)
        {
            return branch.type;
        }

        private string getname(Branch branch)
        {
            return branch.name;
        }

        private object getvalue(Branch branch)
        {
            return branch.Value;
        }

        private EnumOperator getoperator(Branch branch)
        {
            return branch.operation;
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
                    newbranch.type = lhs.type;
                    newbranch.name = lhs.name;
                    newbranch.protectionlevel = rhs.protectionlevel;
                    newbranch.Value = Convert.ToInt32(lhs.Value) + Convert.ToInt32(rhs.Value); // merge the two values
                    return newbranch; // return the merged branch
                }
            }
        }
    }
}