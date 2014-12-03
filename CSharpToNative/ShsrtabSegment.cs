using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    class ShsrtabSegment : Segment
    {
        private char[][] segmentnames;

        public ShsrtabSegment()
        {
            this.name = ".Shsrtab";
            char[] temp = this.name.ToCharArray();
            for (int i = 0; i < temp.Length; i++ )
            {
                this.segmentnames[0][i] = temp[i];
            }
            this.sizeofsegment = segmentnames.Length + 1;
            this.alignsize = 0x01;
            this.aligned = true;
            //this.bytes = new LinkedList<byte>(this.segmentnames);
            this.beginoffset = 0x41;
            this.endoffset += beginoffset + this.sizeofsegment;
        }

        public char[][] getSegmentNames()
        {
            return this.segmentnames;
        }

        public void setSegmentNames(char[][] names)
        {
            this.segmentnames = names;
        }


    }
}
