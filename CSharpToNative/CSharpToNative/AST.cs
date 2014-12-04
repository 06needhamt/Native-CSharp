using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    public class AST<T1, T2, T3, T4> : Tree<T1, T2, T3>
    {

        //Branch<T1,T2> root = new Branch<T1,T2>(Program.pubtokens);
        //AST<T1,T2,T3,T4> def = new AST<T1,T2,T3,T4>();
        
        ASTBranch<T1, T2, T3, T4> root; // pointer to the root of the tree 
        ASTBranch<T1, T2, T3, T4> leftchild; // pointer to the branch to the left of current position
        ASTBranch<T1, T2, T3, T4> rightchild; // pointer to the branch to the right of current position
        public List<ASTBranch<T1,T2,T3,T4>> ASTbranches = new List<ASTBranch<T1,T2,T3,T4>>(1); // list of branches
        public AST()
        {
           root = null;
           leftchild = null;
           rightchild = null;
        }


        public AST(string[] tokens)
        {
            // set up pointers
            root = new ASTBranch<T1, T2, T3, T4>(tokens, this);
            leftchild = new ASTBranch<T1, T2, T3, T4>(tokens, this);
            rightchild = new ASTBranch<T1, T2, T3, T4>(tokens, this);
        }
        public void seroot(ASTBranch<T1, T2, T3, T4> newroot)
        {
            if (newroot.parent != null) // if the passed branch is not the root of the tree
            {
                root = newroot; // set it as the root
                root.parent = null; // set its parent pointer to null
                newroot.parent = null; // set the parameters parent pointer to null
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
        public ASTBranch<T1, T2, T3, T4> getroot(AST<T1, T2, T3, T4> tree)
        {
            foreach (ASTBranch<T1, T2, T3, T4> branch in tree.treebranches) // find the root of the tree
            {
                if (branch.parent.Equals(null)) // if it has no parent it must be the root
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

        public ASTBranch<T1,T2,T3,T4> getrightchild (int i) 
        {
            this.rightchild = this.ASTbranches.ElementAt<ASTBranch<T1, T2, T3, T4>>(i + 1); // find the right child
            return this.rightchild;
        }

        public ASTBranch<T1,T2,T3,T4> getleftchild(int i)
        {
            this.leftchild = this.ASTbranches.ElementAt<ASTBranch<T1, T2, T3, T4>>(i - 1);  // find the left child
            return this.leftchild;
        }

        public void setrightchild(int i)
        {
            this.rightchild = this.ASTbranches.ElementAt<ASTBranch<T1, T2, T3, T4>>(i + 1); // find the right child
        }

        public void setleftchild(int i)
        {
            this.leftchild = this.ASTbranches.ElementAt<ASTBranch<T1, T2, T3, T4>>(i - 1);  // find the left child
        }
    }
}
       

        
