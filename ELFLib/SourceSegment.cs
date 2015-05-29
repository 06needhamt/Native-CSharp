using System.Collections.Generic;

namespace Native.CSharp.ELFLib
{
    public class SourceSegment : Segment
    {
        private SourceSegment(string name, long beginoffset, long endoffset, LinkedList<byte> bytes)
            : base(name, beginoffset, endoffset, bytes)
        {
            this.name = ".source";
            this.beginoffset = beginoffset;
        }
    }
}