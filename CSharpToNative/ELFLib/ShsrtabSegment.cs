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
            //char[] temp;
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

            this.sizeofsegment = bytes.Count + 1;
            this.alignsize = 0x01;
            this.aligned = true;
            this.beginoffset = sizeofHeader + 1;
            this.endoffset += (beginoffset + this.sizeofsegment);
        }

        public LinkedList<string> getSegmentNames()
        {
            return this.segmentnames;
        }

        public void setSegmentNames(LinkedList<string> names)
        {
            this.segmentnames = names;
        }

        public void AddSegmentName(string name)
        {
            this.segmentnames.AddLast(name);;
            this.sizeofsegment = this.CalculateBytesSize();
            this.endoffset += (beginoffset + this.sizeofsegment);

        }

        public LinkedListNode<string> FindName(string nametofind)
        {
            node = this.segmentnames.First;
            while(node != null)
            {
                if (node.Value.Equals(nametofind))
                {
                    return node;
                }
                 
            }
            return null;
        }

        public long CalculateBytesSize()
        {
            char[] temp;
            foreach (string item in segmentnames)
            {
                this.bytes.Clear();
                temp = item.ToCharArray();
                for (int i = 0; i < temp.Length; i++)
                {
                    bytes.AddLast((byte)temp[i]);
                }
            }
            return bytes.Count + 1;
        }


    }
}
