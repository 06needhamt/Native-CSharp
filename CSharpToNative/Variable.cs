using System;

namespace Native.CSharp.Compiler
{
    internal class Variable<DataType>
    {
        private readonly int scope;
        private DataType value;
        private readonly string name;
        private readonly Tuple<int, int> definitionLocation;
        private readonly bool constant = false;
        private readonly bool primitive;
        private readonly EnumAccessModifiers modifier;
        private readonly bool isstatic;
        private readonly Type datatype = typeof(DataType);

        public Variable(int scope, DataType value, string name, Tuple<int,int> location, bool constant, bool primitive, EnumAccessModifiers modifier, bool isstatic)
        {
            this.scope = scope;
            this.value = value;
            this.name = name;
            this.definitionLocation = location;
            this.constant = constant;
            this.primitive = primitive;
            this.modifier = modifier;
            this.isstatic = isstatic;
        }

        public Type Datatype
        {
            get { return datatype; }
        }

        public int Scope
        {
            get { return scope; }
        }

        public DataType Value
        {
            get { return this.value; }
            set
            {
                if (constant)
                {
                    return;
                }
                else
                {
                    this.value = value;
                }
            }
        }

        public string Name
        {
            get { return name; }
        }

        public Tuple<int, int> DefinitionLocation
        {
            get { return definitionLocation; }
        }

        public bool Constant
        {
            get { return constant; }
        }

        public bool Primitive
        {
            get { return primitive; }
        }

        public EnumAccessModifiers Modifier
        {
            get { return modifier; }
        }

        public bool Isstatic
        {
            get { return isstatic; }
        }
    }
}