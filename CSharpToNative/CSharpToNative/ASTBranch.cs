using System;
using System.Collections.Generic;
using System.Linq;

namespace CSharpToNative
{
    public class ASTBranch : Branch
    {
        private bool isroot = false;

        //static Type T4;
        public ASTBranch()
        {
            //try
            //{
            //    throw new InvalidOperationException("Cannot Create a branch without tokens or tree");
            //}
            //catch (InvalidOperationException ex)
            //{
            //    Console.ForegroundColor = ConsoleColor.DarkRed;
            //    Console.WriteLine(ex.Message);
            //    Console.WriteLine(ex.StackTrace);
            //    Console.ResetColor();
            //}
        }

        public ASTBranch(string[] tokens, AST tree)
        {
            List<string> operators = new List<string>(new string[] { "=", "!=", "==", "+", "-", "*", "/", "++#", "#++", "--#", "#--", ">", "<", ">=", "<=", "&&", "&", "||", "|", "!", "~", "^", "+=", "-=", "*=", "/=", "<<", ">>", "%=", "&=", "|=", "^=", "<<=", ">>=", "?:", ".", "," });
            // list of allowed operators
            int times = 0;
            int index = 0;
            if (tree == null)
            {
                tree = new AST(); // initialise the tree
            }
            // set default values
            EnumAccessModifiers eprotval = EnumAccessModifiers.NO_MODIFIER;
            EnumTypes etypeval = EnumTypes.NO_TYPE;
            EnumOperator eopval = EnumOperator.NO_OPERATOR;
            bool infunction = false;

            if (tokens.Contains((EnumTypes.VOID.ToString())))
            {
                return;
            }

            for (int i = 0; i < tokens.Length; i++)
            {
                if (Enum.IsDefined(typeof(EnumAccessModifiers), tokens[i].ToUpper())) // if current token is a access modifier
                {
                    eprotval = (EnumAccessModifiers)Enum.Parse(typeof(EnumAccessModifiers), tokens[i].ToUpper()); // assign it to access modifier variable
                }
                else if (Enum.IsDefined(typeof(EnumTypes), tokens[i].ToUpper())) // if current token is a type
                {
                    etypeval = (EnumTypes)Enum.Parse(typeof(EnumTypes), tokens[i].ToUpper());  // assign it to type variable
                }
                else if (operators.Contains(tokens[i])) // id current token is a operator
                {
                    for (int j = 0; j < operators.Count; j++)
                    {
                        if (operators[j].Equals(tokens[i])) // find which operator it is
                        {
                            index = j; // save the index
                        }
                        else
                        {
                            continue;
                        }
                    }
                    eopval = (EnumOperator)index; // lookup the index in the enumerator and assign it to the operator value
                }
                else // if here it must be the name or value
                {
                    if (string.IsNullOrWhiteSpace(tokens[i]))
                    {
                        return;
                    }
                    else if (tokens[i].Equals("{"))
                    {
                        infunction = true;
                        return;
                    }
                    else if (tokens[i].Equals("}"))
                    {
                        infunction = false;
                        return;
                    }
                    else
                    {
                        if (times == 0)
                        {
                            this.name = tokens[i]; // if this is the first time we have been here it is the name
                            times++;
                        }
                        else if (times == 1) // if this is the second time we have been here it is the value
                        {
                            this.Value = tokens[i];
                            times++;
                        }
                        else if (times > 1 && this.Value != null) // check if this is a two operand expression
                        {
                            int index2 = 0;
                            if (operators.Contains(tokens[i]))
                            {
                                for (int j = 0; j < operators.Count; j++)
                                {
                                    if (operators[j].Equals(tokens[i])) // find which operator it is
                                    {
                                        index2 = j; // save the index
                                    }
                                    else
                                    {
                                        continue;
                                    }
                                }
                                this.operation2 = (EnumOperator)index; // lookup the index in the enumerator and assign it to the operator value
                            }
                            else
                            {
                                this.value2 = tokens[i];
                            }
                        }
                        else // if we have been here more than twice it is a error
                        {
                            try
                            {
                                throw new Exception();
                            }
                            catch (Exception ex)
                            {
                                Console.ForegroundColor = ConsoleColor.Magenta;
                                Console.Error.WriteLine("An Error Occured");
                                Console.ResetColor();
                                Console.ReadKey();
                                Environment.Exit(-1);
                            }
                        }
                    }
                }
                // assign the tempory values to the actual tree
                this.type = etypeval;
                this.operation = eopval;
                this.protectionlevel = eprotval;
                Console.WriteLine(Convert.ToString(this.type));
                Console.WriteLine(Convert.ToString(this.operation));
                Console.WriteLine(Convert.ToString(this.protectionlevel));
                Console.WriteLine(this.name);
                Console.WriteLine(this.Value);
                Console.WriteLine(this.value2);
                //Console.ReadKey();
                if (tree.ASTbranches.Count == 0) // if this is the first branch in the tree
                {
                    this.isroot = true; // make it the root
                    this.parent = null;
                }
                else
                {
                    this.isroot = false; // otherwise dont
                    this.parent = parent;
                }
                tree.ASTbranches.Add(this); // add the branch to the tree
            }

        }
        public bool GetIsRoot()
        {
            return this.isroot;
        }
        public void SetIsRoot(bool b)
        {
            this.isroot = b;
        }
    }
}