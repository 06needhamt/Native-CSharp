using System;

namespace Compiler
{
    internal class Token
    {
        private EnumTokenFlags flags;
        private EnumTokenType type;
        private readonly byte tokenVal;

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
        public static bool operator ==(Token x, Token y)
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

        public override string ToString()
        {
            return this.tokenVal.ToString();
        }

        public static bool operator !=(Token x, Token y)
        {
            return !(x == y);
        }

        public override bool Equals(object obj)
        {
            // If parameter cannot be cast to Token return false:
            Token p = (Token)obj;
            if ((object)p == null)
            {
                return false;
            }

            // Return true if the fields match:
            return base.Equals(obj);
        }

        public override int GetHashCode()
        {
            return base.GetHashCode() ^ int.MaxValue;
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

        public bool isNumeric()
        {
            return Char.IsDigit((char)this.tokenVal);
        }

        public bool isLetter()
        {
            return Char.IsLetter((char)this.tokenVal);
        }
    }
}