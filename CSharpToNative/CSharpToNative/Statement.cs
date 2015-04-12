using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    class Statement
    {
        EnumTypes ReturnType = EnumTypes.NO_TYPE;

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
    }
}
