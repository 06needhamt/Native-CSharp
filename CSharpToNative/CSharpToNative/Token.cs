using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    internal class Token
    {
        private EnumTokenFlags flags;
        private EnumTokenType type;
        private byte tokenVal;

        public Token(EnumTokenFlags Flags, EnumTokenType Type, byte TokenVal)
        {
            this.flags = Flags;
            this.type = Type;
            this.tokenVal = TokenVal;
        }
        public Token()
        {
            this.flags = EnumTokenFlags.NO_FLAGS;
            this.type = EnumTokenType.UNKNOWN;
            this.tokenVal = 0x00;
        }
        public bool CompareTokenType(EnumTokenType Type)
        {
            return ((int)this.type == (int)Type) ? true : false;
        }

        public static bool StaticTokenTypeCompare(Token T, EnumTokenType Type)
        {
            return ((int)T.getType() == (int)Type) ? true : false;
        }
        // comparison functions
        public static bool operator==(Token x, Token y)
        {
            // If both are same instance, return true.
            if (System.Object.ReferenceEquals(x, y))
            {
                return true;
            }

            // If one is null, but not both, return false.
            if (((object)x == null) ^ ((object)y == null))
            {
                int i = Convert.ToInt32(((object)x == null) ^ ((object)y == null));
                Console.Error.WriteLine(i);
                return false;
            }
            // if both are null return true
            if (((object)x == null) && ((object)y == null))
            {
                return true;
            }
            return false;
        }

        public static bool operator !=(Token x, Token y)
        {
            return !(x == y);
        }
        public override bool Equals(object obj)
        {

            // If parameter cannot be cast to Token return false:
            Token p = (Token) obj;
            if ((object)p == null)
            {
                return false;
            }

            // Return true if the fields match:
            return base.Equals(obj);
        }

        // getters 
        public EnumTokenFlags getFlags()
        {
            return this.flags;
        }

        public EnumTokenType getType()
        {
            return this.type;
        }

        public byte getTokenVal()
        {
            return this.tokenVal;
        }

        // setters

        public void setFlags(EnumTokenFlags flags)
        {
            this.flags = flags;
        }

        public void setType(EnumTokenType type)
        {
            this.type = type;
        }
    }
}
