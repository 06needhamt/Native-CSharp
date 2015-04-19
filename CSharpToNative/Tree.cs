using System.Collections.Generic;
using System.Linq;

namespace Compiler
{
    public class Tree : Branch
    {
        public List<Branch> treebranches = new List<Branch>(0); // create a list of branches to the tree
        public ulong depth = 0; // depth of the tree

        public Tree()
        {
            this.depth = 0; // set the depth to 0
            this.treebranches = null; // set the branches to null as there arent any yet
        }

        public Tree(List<Branch> branches)
        {
            this.treebranches = branches; // assign the passed list of branches to this tree
            this.depth = (ulong)treebranches.Count; // set the depth to the amount of barnches passed in
        }

        protected Tree AddBranchToTree(Branch branch)
        {
            this.treebranches.Add(branch); // add the branch to the tree
            this.depth++; // increment the depth
            return this; // return the new tree
        }

        protected Tree Union(Tree lhs, Tree rhs)
        {
            Tree newtree = new Tree(); ; // create a new tree
            if (lhs.Equals(rhs)) // if the trees are equal do not merge them
            {
                return this;
            }
            else
            {
                // merge the tree's values
                newtree.depth = lhs.depth + rhs.depth;
                newtree.name = lhs.name;
                newtree.Value = lhs.Value;
                newtree.type = EnumTypes.OBJECT;

                for (int i = 0; i < lhs.treebranches.Count; i++)
                {
                    // add all of the barnches fro the left tree to the new tree
                    newtree.AddBranchToTree(lhs.treebranches.ElementAt<Branch>(i));
                    //newtree.depth++;
                }
                for (int j = 0; j < rhs.treebranches.Count; j++)
                {
                    // add all of the barnches fro the right tree to the new tree
                    newtree.AddBranchToTree(rhs.treebranches.ElementAt<Branch>(j));
                    //newtree.depth++;
                }
                return newtree; // return the new tree
            }
        }

        protected Branch GetBranch(Tree tree, dynamic criteria = null)
        {
            Branch b = new Branch();

            if (criteria.Equals(null))
            {
                return tree.treebranches.First<Branch>();
            }
            else
            {
                return tree.treebranches.FirstOrDefault<Branch>(c => c.Value.Equals(criteria));
            }
        }

        protected ulong GetTreeDepth(Tree tree)
        {
            return tree.depth;
        }
    }
}