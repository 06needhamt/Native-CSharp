using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ELFLib
{
    public class Segment
    {
        protected Boolean aligned = false;
        protected short alignsize = 0x00;
        protected long sizeofsegment = 0x00;
        protected long beginoffset = 0x00;
        protected long endoffset = 0x00;
        protected string name = string.Empty;
        protected bool isempty = true;
        protected LinkedList<byte> bytes;

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

        public bool getAligned()
        {
            return this.aligned;
        }

        public short getAlignSize()
        {
            return this.alignsize;
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

        public void setAligned(bool align)
        {
            this.aligned = align;
        }

        public void setAlignSize(short alignsize)
        {
            this.alignsize = alignsize;
        }
    }
}
