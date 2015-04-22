namespace Compiler
{
    internal class Scope
    {
        private Block owner;
        private Scope parent;

        internal Scope Parent
        {
            get { return parent; }
            set { parent = value; }
        }

        internal Block Owner
        {
            get { return owner; }
            set { owner = value; }
        }

        public Scope()
        {
        }

        public Scope(Block owner, Scope parent)
        {
            this.owner = owner;
            this.parent = parent;
        }
    }
}