using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    class VariableNotDefinedException : Exception
    {
        public VariableNotDefinedException()
        {

        }
        public VariableNotDefinedException(string message)
        {
            
        }
        public override string Message
        {
            get
            {
                return "Variable Not Defined";
            }
        }
        public override string ToString()
        {
            return this.GetType() + this.Message;
        }
    }
}
