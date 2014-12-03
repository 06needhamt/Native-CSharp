using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    class NullSegement : Segment
    {
        public NullSegement(string name, long beginoffset, long endoffset, LinkedList<byte> bytes) : base(name,beginoffset,endoffset,bytes)
        {
            this.name = ".null";
            this.beginoffset = beginoffset;
            this.endoffset = endoffset;
            this.bytes = null;
            this.sizeofsegment = 0x04;
            this.alignsize = 0x00;
            this.aligned = false;
        }
    }
}
