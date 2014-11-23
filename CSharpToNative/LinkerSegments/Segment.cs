using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LinkerSegments
{
    public class Segment
    {
        private long sizeofsegment = 0x00;
        private long beginoffset = 0x00;
        private long endoffset = 0x00;
        private string name = string.Empty;
        private bool isempty = true;
        private LinkedList<byte> bytes;

        public Segment()
        {

        }
        public Segment(string name, long beginoffset, long endoffset, LinkedList<byte> bytes)
        {
            if(bytes.Count != 0 || bytes == null)
            {
                this.setEmpty(true);
                this.setSizeofSegment(0);
                this.bytes = null;
            }
            else
            {
                this.setEmpty(false);
                this.setSizeofSegment((long)bytes.Count);
                this.setBytes(bytes);
                this.setName(name);
                this.setBeginOffset(beginoffset);
                this.setEndOffset(endoffset);
            }
        }

        public long getSizeOfSegment()
        {
            return this.sizeofsegment;
        }

        public long getBeginOffset()
        {
            return this.beginoffset;
        }

        public long getEndOffset()
        {
            return this.endoffset;
        }

        public string getName()
        {
            return this.name;
        }

        public bool IsEmpty()
        {
            return this.isempty;
        }

        public LinkedList<byte> getBytes()
        {
            return this.bytes;
        }

        public void setSizeofSegment(long size)
        {
            this.sizeofsegment = size;
        }

        public void setBeginOffset(long offset)
        {
            this.beginoffset = offset;
        }

        public void setEndOffset(long offset)
        {
            this.endoffset = offset;
        }

        public void setName(string name)
        {
            this.name = name;
        }

        public void setEmpty(bool empty)
        {
            this.isempty = empty;
        }

        public void setBytes(LinkedList<byte> bytes)
        {
            this.bytes = bytes;
        }
    }
}
