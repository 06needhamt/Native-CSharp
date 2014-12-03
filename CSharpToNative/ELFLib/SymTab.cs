using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    class SymTab : Segment
    {
        Symbol[] SymbolBuffer;
        NullSegement sNull;
        
        public SymTab(string name, long beginoffset, long endoffset, LinkedList<byte> bytes) : base(name,beginoffset,endoffset,bytes)
        {
            this.name = ".symtab";
            this.beginoffset = beginoffset;
            this.endoffset = (this.beginoffset + this.sizeofsegment) + 1;
            this.bytes = bytes;
            this.alignsize = 0x04;
            this.aligned = true;
            this.sNull = new NullSegement(".null", (this.beginoffset + this.alignsize), (this.beginoffset + this.alignsize + 0x04), null);

        }

    }
}
