using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    public class SourceSegment : Segment
    {
        SourceSegment(string name, long beginoffset, long endoffset, LinkedList<byte> bytes) : base(name,beginoffset,endoffset,bytes)
        {
            this.name = ".source";
            this.beginoffset = beginoffset;
        }
    }
}
