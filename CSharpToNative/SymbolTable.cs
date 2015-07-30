using System;
using System.Collections.Generic;

namespace Native.CSharp.Compiler
{
    internal class SymbolTable<T> 
    {
        private LinkedList<Symbol<T>> symbols;

        public LinkedList<Symbol<T>> Symbols
        {
            get { return symbols; }
            set { symbols = value; }
        }
        private readonly Type symbolType;

        public Type SymbolType
        {
            get { return symbolType; }
        }

        public SymbolTable()
        {
            this.symbols = new LinkedList<Symbol<T>>();
            this.symbolType = typeof(T);
        }
        public SymbolTable(LinkedList<Symbol<T>> symbols)
        {
            this.symbols = symbols;
            this.symbolType = typeof(T);
        }

        public bool IsSymbolDefined(Symbol<T> symbolToFind)
        {
            return symbols.Contains(symbolToFind) ? true : false;
        }
    }
}