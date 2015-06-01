using System;
using System.Collections.Generic;

namespace Native.CSharp.Compiler
{
    internal class SymbolTable<T>
    {
        private LinkedList<T> symbols;

        public LinkedList<T> Symbols
        {
            get { return symbols; }
            set { symbols = value; }
        }
        private readonly Type symbolType;

        public Type SymbolType
        {
            get { return symbolType; }
        } 
 

        public SymbolTable(LinkedList<T> symbols)
        {
            this.symbols = symbols;
            this.symbolType = typeof(T);
        }

        public T findSymbol(Symbol<T> symbolToFind)
        {
            return this.Symbols.Find(symbolToFind.Value).Value;
        }
    }
}