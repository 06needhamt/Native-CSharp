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

        public bool CompareTokenType(EnumTokenType Type)
        {
            return ((int)this.type == (int)Type) ? true : false;
        }
        // comparison functions
        public static bool operator==(Token x, Token y)
        {
            // If both are null, or both are same instance, return true.
            if (System.Object.ReferenceEquals(x, y))
            {
                return true;
            }

            // If one is null, but not both, return false.
            //if (((object)x == null) ^ ((object)y == null))
            //{
            //    return false;
            //}
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
