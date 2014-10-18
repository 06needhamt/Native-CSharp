using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    [Serializable]
    class TypeMismatchException : System.Exception
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
