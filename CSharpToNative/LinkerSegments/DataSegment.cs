using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinkerSegments
{
    class DataSegment : Segment
    {
        protected EnumDataSizes datasize = 0x00;
        protected Boolean aligned = false;
        protected short alignsize = 0x00; 
    }
}
