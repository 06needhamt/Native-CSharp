using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Compiler
{
    class Statement
    {
        EnumTypes ReturnType = EnumTypes.NO_TYPE;
        Block container;

        internal Block Container
        {
            get { return container; }
            set { container = value; }
        }

        internal EnumTypes ReturnValueType
        {
            get { return ReturnType; }
            set { ReturnType = value; }
        }
        Token[] tokens;

        internal Token[] Tokens
        {
            get { return tokens; }
            set { tokens = value; }
        }

        public Statement(Token[] tokens)
        {
            this.ReturnType = EnumTypes.NO_TYPE;
            this.tokens = tokens;
        }

        public Statement parseStatement()
        {
            Token[] temptokens = this.tokens;
            StringBuilder sb = new StringBuilder();
            foreach(Token t in temptokens)
            {

                if(!t.isNumeric())
                {
                    sb.Append(t.ToString());
                }
                else if(t.getType().Equals(EnumTokenType.CLOSING_BRACE) || t.getType().Equals(EnumTokenType.OPENING_BRACE))
                {
                    sb.Append(t.ToString());
                }
                
            }
            return new Statement(temptokens);
        }

        public void parseLocalVariables(string[] contents)
        {

            EnumTypes ReturnType;
            if (Enum.IsDefined(typeof(EnumTypes), contents[0]))
            {
                EnumTypes VariableType = (EnumTypes)Enum.Parse(typeof(EnumTypes), contents[0]);
                container.LocalVariables.Add(new Tuple<EnumTypes, string, object>(VariableType, contents[1], contents[3]));
                Console.Error.WriteLine("Adding Local Variable");
            }
        }
    }
}
