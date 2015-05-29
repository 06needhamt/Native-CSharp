using System;
using System.Collections.Generic;

namespace Native.CSharp.Compiler
{
    internal sealed class Block : Scope
    {
        private List<Tuple<EnumTypes, string, object>> localVariables;

        public List<Tuple<EnumTypes, string, object>> LocalVariables
        {
            get { return localVariables; }
            set { localVariables = value; }
        }

        private Scope scope;
        private Scope parent;
        private String[] contents;

        public Block(Scope parent, string[] contents)
            : base()
        {
            this.contents = contents;
            this.parent = parent;
            this.scope = new Scope(this, parent);
        }

        public String[] Contents
        {
            get { return contents; }
            set { contents = value; }
        }

        internal Scope Parent
        {
            get { return parent; }
            set { parent = value; }
        }

        internal Scope Scope
        {
            get { return scope; }
            set { scope = value; }
        }

        public void ParseBlock()
        {
        }
    }
}