using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    public class ShsrtabSegment : Segment
    {
        private LinkedList<string> segmentnames;
        private LinkedListNode<string> node;
        private const byte sizeofHeader = 0x29;
        public ShsrtabSegment(LinkedList<string> names)
        {
            char[] temp;
            this.bytes = new LinkedList<byte>();
            if (names == null)
            {
                segmentnames = new LinkedList<string>();
            }
            else
            {
                segmentnames = names;
            }
            node = segmentnames.First;
            this.name = ".Shsrtab";
            this.segmentnames.AddLast(this.name);
            foreach(string item in segmentnames) 
            {
                temp = item.ToCharArray();
                for (int i = 0 ; i < temp.Length; i++)
                {
                    bytes.AddLast((byte)temp[i]);
                }
            }
            this.sizeofsegment = bytes.Count + 1;
            this.alignsize = 0x01;
            this.aligned = true;
            this.beginoffset = sizeofHeader + 1;
            this.endoffset += beginoffset + this.sizeofsegment;
        }

        public LinkedList<string> getSegmentNames()
        {
            return this.segmentnames;
        }

        public void setSegmentNames(LinkedList<string> names)
        {
            this.segmentnames = names;
        }


    }
}
