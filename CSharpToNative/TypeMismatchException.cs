using System;

namespace Compiler
{
    [Serializable]
    internal class TypeMismatchException : System.Exception
    {
        public TypeMismatchException()
        {
        }

        public TypeMismatchException(string message)
        {
        }

        public override string Message
        {
            get
            {
                return "Type Operands Do not match";
            }
        }

        public override string ToString()
        {
            return this.GetType() + this.Message;
        }
    }
}