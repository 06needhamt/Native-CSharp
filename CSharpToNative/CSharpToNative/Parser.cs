using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace CSharpToNative
{
    internal class Parser : IRegisterSet
    {
        private int[] numericaltypes = { 0, 3, 4, 5, 6, 9, 11 }; // array to hold the enum values of numerical types
        private int[] alphanumericaltypes = { 1, 8 }; // array to hold the enum values of alphanumerical types
        private List<ASTBranch> branches; // list to hold the branches we are working with
        private List<Branch> treebranches;
        private AST thetree; /* new AST(Lexer.pubtokenslist.ElementAt<string[]>(0)); */
        private List<Instruction> instructions;

        // the tree we are working with
        public Parser()
        {
            Console.Error.WriteLine("Creating empty parser");
            this.instructions = new List<Instruction>();
            this.thetree = new AST();
            this.SetBranches(null);
        }

        public Parser(AST tree, ref int i)
        {
            this.thetree = tree;
            //create a tree with the current tokens
            this.branches = thetree.ASTbranches; // get the trees branches
            this.instructions = new List<Instruction>();

            //foreach (ASTBranch b in tree.ASTbranches)
            //{
            //    tree.treebranches.Add(new Branch(Lexer.pubtokens));
            //}

            
        }
        public void Parse()
        {
            foreach (ASTBranch branch in this.branches)
            {
                if (IsNumerical(branch.type)) // check if the branch is numerical
                {
                    CreateNumericalInstruction(branch.type, branch.operation, branch.name, branch.Value);
                    // Call the numerical instruction creation function
                }
                else if (isAlphaNumerical(branch.type)) // check if the branch is alpha numerical
                {
                    CreateAlphaNumericalInstruction(branch.type, branch.operation, branch.name, branch.Value);
                    // Call the alphanumerical instruction creation function
                }
                else // if the branch is in a binary format
                {
                    CreateBinaryInstruction(branch.type, branch.operation, branch.name, branch.Value);
                    // Call the binary instruction creation function
                }
            }
        }
        private void UpdateBranches()
        {
            this.branches = this.thetree.ASTbranches;
        }

        private void SetBranches(List<ASTBranch> branches)
        {
            this.branches = branches;
        }

        private List<ASTBranch> GetBranches()
        {
            return this.branches;
        }

        private void CreateNumericalInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            switch (operation) // see what operation we are performing
            {
                case EnumOperator.BINARY_PLUS: // adding
                    {
                        instructions.Add(CreateADDInstruction(Type, operation, name, val));
                        break;
                    }

                case EnumOperator.BINARY_MINUS:
                    {
                        instructions.Add(CreateSubInstruction(Type, operation, name, val));
                        break;
                    }
                case EnumOperator.BINARY_MULTIPLY:
                    {
                        instructions.Add(CreateMulInstruction(Type, operation, name, val));
                        break;
                    }
                case EnumOperator.BINARY_DIVIDE:
                    {
                        instructions.Add(CreateDivInstruction(Type, operation, name, val));
                        break;
                    }

                case EnumOperator.ASSIGNMEMT: // if it is an assignment
                    {
                        instructions.Add(CreateMOVInstruction(Type, operation, name, val));
                        break;
                    }
            }
            return;
        }

        private Instruction CreateMOVInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0); // list to hold the operands
            DefineVariable(Type, name, null); // try and define a variable
            ops.Add(this.thetree.ASTbranches.ElementAt(0).name); // add the name of the variable to the operands list
            ops.Add((string)this.thetree.ASTbranches.ElementAt(0).Value); // add the variable to assign to the variable to the operands list
            Instruction ins = new Instruction((uint)EnumOpcodes.MOV, ops.ToArray());
            return ins;
        }

        private Instruction CreateDivInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0); // list to hold the operands
            DefineVariable(Type, name, null); // try and define a variable
            bool issigned = false;

            for (int i = 0; i < 2; i++)
            {
                if (Regex.IsMatch((string)branches.ElementAt(i).Value, "([0-9])")) // find the numerical operands
                {
                    if ((int)branches.ElementAt(i).Value < 0) // if the value is negative then it is a signed operation
                    {
                        issigned = true;
                    }
                    //ops.Add((string)branches.ElementAt(i).Value); // add it to the list
                    //if(Regex.IsMatch((string)this.tree.getroot(tree).Value,"([0-9])"))
                    //{
                    //    ops.Add((string)this.tree.getroot(tree).Value);
                    //}
                    for (int j = 0; j < this.thetree.ASTbranches.Count; j++)
                    {
                        if (Regex.IsMatch((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value, "([0-9])")) // find it in the tree
                        {
                            ops.Add((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value); // and add it in the list
                        }
                        else
                        {
                            continue;
                        }
                    }
                }
                else
                {
                    continue;
                }
                if (ops.Count < 1) // if there were no operands
                {
                    try
                    {
                        throw new InvalidOperationException("Cannot Create Specified instruction type with no operands"); // throw an error
                    }
                    catch (InvalidOperationException ex)
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
                        Console.WriteLine("A FATAL ERROR HAS OCCURED DURING CODE GENERATION : CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS ");
                        Console.ResetColor();
                        // System.Threading.Thread.Sleep(2500);
                        Environment.Exit(-1);
                    }
                }
            }
            if (issigned)
            {
                Instruction ins = new Instruction((int)EnumOpcodes.IDIV, ops.ToArray<string>()); // if it is signed create an IDIV instruction with the found operands
                return ins;
            }
            else
            {
                Instruction ins = new Instruction((int)EnumOpcodes.DIV, ops.ToArray<string>()); // if it is unsigned create an DIV instruction with the found operands
                return ins;
            }
        }

        private Instruction CreateMulInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0); // list to hold the operands
            DefineVariable(Type, name, null); // try and define a variable

            bool issigned = false;
            for (int i = 0; i < 2; i++)
            {
                if (Regex.IsMatch((string)branches.ElementAt(i).Value, "([0-9])")) // find the numerical operands
                {
                    if ((int)branches.ElementAt(i).Value < 0) // if the value is negative then it is a signed operation
                    {
                        issigned = true;
                    }
                    //ops.Add((string)branches.ElementAt(i).Value); // add it to the list
                    //if(Regex.IsMatch((string)this.tree.getroot(tree).Value,"([0-9])"))
                    //{
                    //    ops.Add((string)this.tree.getroot(tree).Value);
                    //}
                    for (int j = 0; j < this.thetree.ASTbranches.Count; j++)
                    {
                        if (Regex.IsMatch((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value, "([0-9])")) // find it in the tree
                        {
                            ops.Add((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value); // and add it in the list
                        }
                        else
                        {
                            continue;
                        }
                    }
                }
                else
                {
                    continue;
                }
                if (ops.Count < 1) // if there were no operands
                {
                    try
                    {
                        throw new InvalidOperationException("Cannot Create Specified instruction type with no operands"); // throw an error
                    }
                    catch (InvalidOperationException ex)
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
                        Console.WriteLine("A FATAL ERROR HAS OCCURED DURING CODE GENERATION : CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS ");
                        Console.ResetColor();
                        // System.Threading.Thread.Sleep(2500);
                        Environment.Exit(-1);
                    }
                }
            }
            if (issigned)
            {
                Instruction ins = new Instruction((int)EnumOpcodes.IMUL, ops.ToArray<string>()); // if it is signed create an IMUL instruction with the found operands
                return ins;
            }
            else
            {
                Instruction ins = new Instruction((int)EnumOpcodes.MUL, ops.ToArray<string>()); // if it is unsigned create an MUL instruction with the found operands
                return ins;
            }
        }

        private Instruction CreateSubInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0); // list to hold the operands
            DefineVariable(Type, name, null); // try and define a variable
            for (int i = 0; i < 2; i++)
            {
                if (Regex.IsMatch((string)branches.ElementAt(i).Value, "([0-9])")) // find the numerical operands
                {
                    //ops.Add((string)branches.ElementAt(i).Value); // add it to the list
                    //if(Regex.IsMatch((string)this.tree.getroot(tree).Value,"([0-9])"))
                    //{
                    //    ops.Add((string)this.tree.getroot(tree).Value);
                    //}
                    for (int j = 0; j < this.thetree.ASTbranches.Count; j++)
                    {
                        if (Regex.IsMatch((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value, "([0-9])")) // find it on the tree too
                        {
                            ops.Add((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value); // and then add it to the list
                        }
                        else
                        {
                            continue;
                        }
                    }
                }
                else
                {
                    continue;
                }
                if (ops.Count < 1) // if there were no operands found
                {
                    try // throw an exception
                    {
                        throw new InvalidOperationException("Cannot Create Specified instruction type with no operands");
                    }
                    catch (InvalidOperationException ex)
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
                        Console.WriteLine("A FATAL ERROR HAS OCCURED DURING CODE GENERATION : CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS ");
                        Console.ResetColor();
                        // System.Threading.Thread.Sleep(2500);
                        Environment.Exit(-1);
                    }
                }
            }
            Instruction ins = new Instruction((int)EnumOpcodes.SUB, ops.ToArray<string>()); // create an SUB instruction with the found operands
            return ins;
        }

        private Instruction CreateADDInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0); // list to hold the operands
            DefineVariable(Type, name, null); // try and define a variable
            for (int i = 0; i < 2; i++)
            {
                if (Regex.IsMatch((string)branches.ElementAt(i).Value, "([0-9])")) // find the numerical operands
                {
                    //ops.Add((string)branches.ElementAt(i).Value); // add it to the list
                    //if(Regex.IsMatch((string)this.tree.getroot(tree).Value,"([0-9])"))
                    //{
                    //    ops.Add((string)this.tree.getroot(tree).Value);
                    //}
                    for (int j = 0; j < this.thetree.ASTbranches.Count; j++)
                    {
                        if (Regex.IsMatch((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value, "([0-9])")) // find it on the tree too
                        {
                            ops.Add((string)this.thetree.ASTbranches.ElementAt<ASTBranch>(j).Value); // and then add it to the list
                        }
                        else
                        {
                            continue;
                        }
                    }
                }
                else
                {
                    continue;
                }
                if (ops.Count < 1) // if there were no operands found
                {
                    try // throw an exception
                    {
                        throw new InvalidOperationException("Cannot Create Specified instruction type with no operands");
                    }
                    catch (InvalidOperationException ex)
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
                        Console.WriteLine("A FATAL ERROR HAS OCCURED DURING CODE GENERATION : CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS ");
                        Console.ResetColor();
                        // System.Threading.Thread.Sleep(2500);
                        Environment.Exit(-1);
                    }
                }
            }
            Instruction ins = new Instruction((int)EnumOpcodes.ADD, ops.ToArray<string>()); // create an add instruction with the found operands
            return ins;
        }

        private void CreateAlphaNumericalInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            //DefineVariable(Type, name, null);
            DefineVariable(Type, name, val);
            //for (int i = 0; i < this.thetree.ASTbranches.Count; i++)
            //{
            //    if (operation.Equals(EnumOperator.ASSIGNMEMT))
            //    {
            //        if (Regex.IsMatch((string)this.thetree.ASTbranches.ElementAt(i).Value, "^[a-zA-Z0-9_]+$"))
            //        {
            //            
            //        }
            //    }
            //}
        }

        private void CreateBinaryInstruction(EnumTypes Type, EnumOperator operation, string name, dynamic val)
        {
            List<string> ops = new List<string>(0);
            DefineVariable(Type, name, null);
            switch (operation)
            {
                case EnumOperator.ASSIGNMEMT: // if it is an assignment
                    {
                        for (int i = 0; i < 2; i++)
                        {
                            ops.Add(this.thetree.ASTbranches.ElementAt(i).name); // add the name of the variable to the operands list
                            ops.Add((string)this.thetree.ASTbranches.ElementAt(i).Value); // add the variable to assign to the variable to the operands list
                        }
                    }
                    break;
            }
        }

        private int GetOperation(EnumOperator Operator) // get the current operator's int value
        {
            return (int)Operator;
        }

        private static dynamic DefineVariable(EnumTypes Type, string name, dynamic val = null)
        {
            // System.Type var = val.GetType();
            dynamic memory = val; // define some memory for a variable
            return memory;
        }

        private bool IsNumerical(EnumTypes Type)
        {
            //int[] numericaltypes = { 0, 3, 4, 5, 6, 9, 11 };
            return (numericaltypes.Contains<int>(Convert.ToInt32(Type))); // return true if it is numerical
        }

        private bool isAlphaNumerical(EnumTypes Type)
        {
            return (alphanumericaltypes.Contains<int>(Convert.ToInt32(Type))); // return true if it is alphanumerical
        }

        private bool IsBinary(EnumTypes Type)
        {
            return (!alphanumericaltypes.Contains<int>(Convert.ToInt32(Type)) && !numericaltypes.Contains<int>(Convert.ToInt32(Type))) ? true : false; // return true if it is not numerical or alphanumerical
        }

        protected bool executebranch(ASTBranch branch)
        {
            // create instructions from a branch
            string varname = branch.name;
            EnumTypes type = branch.type;
            EnumOperator operation = branch.operation;
            Object value = branch.Value;
            if (IsNumerical(type))
            {
                CreateNumericalInstruction(type, operation, varname, value);
            }
            else if (isAlphaNumerical(type))
            {
                CreateAlphaNumericalInstruction(type, operation, varname, value);
            }
            else
            {
                CreateBinaryInstruction(type, operation, varname, value);
            }
            return false;
        }

        public List<Instruction> getInstructions()
        {
            return this.instructions;
        }
    }
}