﻿using System;
using System.Collections.Generic;
using System.Linq;

namespace Native.CSharp.Compiler
{
    public class AST : Tree
    {
        //Branch<T1,T2> root = new Branch<T1,T2>(Program.pubtokens);
        //AST<T1,T2,T3,T4> def = new AST<T1,T2,T3,T4>();

        private ASTBranch root; // pointer to the root of the tree
        private ASTBranch leftchild; // pointer to the branch to the left of current position
        private ASTBranch rightchild; // pointer to the branch to the right of current position
        public List<ASTBranch> ASTbranches = new List<ASTBranch>(1); // list of branches

        public AST() : base()
        {
            root = null;
            leftchild = null;
            rightchild = null;
        }

        public AST(string[] tokens) : base()
        {
            // set up pointers
            root = new ASTBranch(tokens, this);
            leftchild = new ASTBranch(null, this);
            rightchild = new ASTBranch(null, this);
        }

        public void seroot(ASTBranch newroot)
        {
            if (newroot.Parent != null) // if the passed branch is not the root of the tree
            {
                root = newroot; // set it as the root
                root.Parent = null; // set its parent pointer to null
                newroot.Parent = null; // set the parameters parent pointer to null
            }
            else // if it is already the root of the tree
            {
                try
                {
                    throw new InvalidOperationException("THE BRANCH IS ALREADY THE ROOT OF THIS TREE");
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
                    Console.WriteLine("FATAL ERROR THE BRANCH IS ALREADY THE ROOT OF THIS TREE EXITING");
                    Console.ResetColor();
                    // System.Threading.Thread.Sleep(2500);
                    Environment.Exit(-1);
                }
            }
        }

        public ASTBranch getroot(AST tree)
        {
            foreach (ASTBranch branch in tree.treebranches) // find the root of the tree
            {
                if (branch.Parent.Equals(null)) // if it has no parent it must be the root
                {
                    return branch;
                }
                else // otherwise keep looking
                {
                    continue;
                }
            }
            return null;
            /*new String(new char[]  { 'n','o',' ','r','o','o','t' });*/
        }

        public ASTBranch getrightchild(int i)
        {
            this.rightchild = this.ASTbranches.ElementAt<ASTBranch>(i + 1); // find the right child
            return this.rightchild;
        }

        public ASTBranch getleftchild(int i)
        {
            this.leftchild = this.ASTbranches.ElementAt<ASTBranch>(i - 1);  // find the left child
            return this.leftchild;
        }

        public void setrightchild(int i)
        {
            this.rightchild = this.ASTbranches.ElementAt<ASTBranch>(i + 1); // find the right child
        }

        public void setleftchild(int i)
        {
            this.leftchild = this.ASTbranches.ElementAt<ASTBranch>(i - 1);  // find the left child
        }
    }
}