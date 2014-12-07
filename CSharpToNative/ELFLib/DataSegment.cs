using System;
using System.Collections.Generic;

namespace ELFLib
{
    public class DataSegment : Segment
    {
        protected EnumDataSizes datasize = EnumDataSizes.NO_DATA;

        public DataSegment(string name, long beginoffset, long endoffset, LinkedList<byte> bytes)
            : base(name, beginoffset, endoffset, bytes)
        {
            this.beginoffset = beginoffset;
            this.name = ".data";
            this.endoffset += (this.beginoffset + this.sizeofsegment) + 1;
            this.bytes = bytes;
        }

        public LinkedList<byte> addData(LinkedList<Tuple<string, string, string>> symboltable)
        {
            foreach (var item in symboltable)
            {
                char[] temp1 = item.Item1.ToCharArray();
                char[] temp2 = item.Item2.ToCharArray();
                char[] temp3 = item.Item3.ToCharArray();
                for (int i = 0; i < temp1.Length; i++)
                {
                    this.bytes.AddLast((byte)temp1[i]);
                }
                for (int i = 0; i < temp2.Length; i++)
                {
                    this.bytes.AddLast((byte)temp2[i]);
                }
                for (int i = 0; i < temp3.Length; i++)
                {
                    this.bytes.AddLast((byte)temp3[i]);
                }
                bytes.AddLast(0x20);
            }
            this.sizeofsegment = bytes.Count + 1;
            this.endoffset += (this.beginoffset + this.sizeofsegment) + 1;
            return bytes;
        }
    }
}