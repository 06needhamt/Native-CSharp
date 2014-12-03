using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    public class DataSegment : Segment
    {
        public DataSegment(string name, long beginoffset, long endoffset, LinkedList<byte> bytes) : base(name,beginoffset,endoffset,bytes)
        {

        }
        protected EnumDataSizes datasize = EnumDataSizes.NO_DATA;
    }
}
