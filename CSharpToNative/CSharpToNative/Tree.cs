using System.Collections.Generic;
using System.Linq;

namespace CSharpToNative
{
    public class Tree<T1, T2, T3> : Branch<T1, T2>
    {
        public List<Branch<T1, T2>> treebranches = new List<Branch<T1, T2>>(0); // create a list of branches to the tree
        public ulong depth = 0; // depth of the tree

        public Tree()
        {
            this.depth = 0; // set the depth to 0
            this.treebranches = null; // set the branches to null as there arent any yet
        }

        public Tree(List<Branch<T1, T2>> branches)
        {
            this.treebranches = branches; // assign the passed list of branches to this tree
            this.depth = (ulong)treebranches.Count; // set the depth to the amount of barnches passed in
        }

        protected Tree<T1, T2, T3> AddBranchToTree(Branch<T1, T2> branch)
        {
            this.treebranches.Add(branch); // add the branch to the tree
            this.depth++; // increment the depth
            return this; // return the new tree
        }

        protected Tree<T1, T2, T3> Union(Tree<T1, T2, T3> lhs, Tree<T1, T2, T3> rhs)
        {
            Tree<T1, T2, T3> newtree = new Tree<T1, T2, T3>(); ; // create a new tree
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
                    newtree.AddBranchToTree(lhs.treebranches.ElementAt<Branch<T1, T2>>(i));
                    //newtree.depth++;
                }
                for (int j = 0; j < rhs.treebranches.Count; j++)
                {
                    // add all of the barnches fro the right tree to the new tree
                    newtree.AddBranchToTree(rhs.treebranches.ElementAt<Branch<T1, T2>>(j));
                    //newtree.depth++;
                }
                return newtree; // return the new tree
            }
        }

        protected Branch<T1, T2> GetBranch(Tree<T1, T2, T3> tree, dynamic criteria = null)
        {
            Branch<T1, T2> b = new Branch<T1, T2>();

            if (criteria.Equals(null))
            {
                return tree.treebranches.First<Branch<T1, T2>>();
            }
            else
            {
                return tree.treebranches.FirstOrDefault<Branch<T1, T2>>(c => c.Value.Equals(criteria));
            }
        }

        protected ulong GetTreeDepth(Tree<T1, T2, T3> tree)
        {
            return tree.depth;
        }
    }
}