using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Native.CSharp.Compiler
{
    internal class Symbol<T>
    {
        public Symbol(EnumTypes type, EnumAccessModifiers modifier, string name, dynamic value = null)
        {
            this.type = type;
            this.modifier = modifier;
            this.name = name;
            this.value = value;
        }
        private readonly EnumAccessModifiers modifier;

        public EnumAccessModifiers Modifier
        {
            get { return modifier; }
        }

        private readonly EnumTypes type;

        public EnumTypes Type
        {
            get { return type; }
        }

        private readonly string name;

        public string Name
        {
            get { return name; }
        }

        private T value;

        public T Value
        {
            get { return this.value; }
            set { this.value = value; }
        }
        private SymbolTable<T> table;

        public SymbolTable<T> Table
        {
            get { return table; }
            set { table = value; }
        }

        public static bool operator ==(Symbol<T> lhs, Symbol<T> rhs)
        {
            if (lhs == null || rhs == null)
            {
                return false;
            }

            if (lhs.Name == rhs.Name)
            {
                return true;
            }
            return false;
        }

        public static bool operator !=(Symbol<T> lhs, Symbol<T> rhs)
        {
            if (lhs == null || rhs == null)
            {
                return false;
            }

            if (lhs.Name != rhs.Name)
            {
                return true;
            }
            return false;
        }

        public override bool Equals(object obj)
        {
            try
            {
                Symbol<T> o = (Symbol<T>)obj;
                return o.Name == this.Name;
            }
            catch (InvalidCastException ex)
            {
                Console.Error.WriteLine("Both objects were not symbols of the same type");
                Console.Error.WriteLine(ex.StackTrace);
                return false;
            }
            
        }
    }
}
