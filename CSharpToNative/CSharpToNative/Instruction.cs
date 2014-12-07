using System;
using System.Collections.Generic;
using System.IO;
using System.Text;

namespace CSharpToNative
{
    internal class Instruction
    {
        private uint Opcode;
        private string[] Operands;

        public Instruction(uint opcode, string[] operands)
        {
            this.Opcode = opcode;
            //string hexop = Convert.ToString(this.Opcode, 16);
            //this.Opcode = int.Parse(hexop, System.Globalization.NumberStyles.HexNumber);
            //string binop = Convert.ToString(this.Opcode,2);
            //this.Opcode = Convert.ToInt32(Convert.ToString(opcode, 10));
            //Console.WriteLine(binop);
            Console.WriteLine(this.Opcode);
            this.Operands = operands;
        }

        public Instruction(uint opcode)
        {
            this.Opcode = opcode;
            //string hexop = Convert.ToString(this.Opcode, 16);
            //this.Opcode = int.Parse(hexop, System.Globalization.NumberStyles.HexNumber);
            //string binop = Convert.ToString(this.Opcode,2);
            //this.Opcode = Convert.ToInt32(Convert.ToString(opcode,10));
            //Console.WriteLine(binop);
            Console.WriteLine(this.Opcode);
            this.Operands = null;
        }

        public Instruction()
        {
            try
            {
                throw new InvalidOperationException("Cannot Create Instruction Without an Opcode or Operands");
            }
            catch (InvalidOperationException ex)
            {
                Console.ForegroundColor = ConsoleColor.DarkRed;
                Console.WriteLine(ex.GetType());
                Console.WriteLine(ex.Message);
                Console.WriteLine(ex.StackTrace);
                Console.ResetColor();
            }
            finally
            {
                Console.ForegroundColor = ConsoleColor.Magenta;
                Console.WriteLine("A FATAL ERROR HAS OCCURED DURING CODE GENERATION : CANNOT CREATE INSTRUCTION WITHOUT AN OPCODE OR OPERANDS ");
                Console.ResetColor();
                // // System.Threading.Thread.Sleep(2500);
                Environment.Exit(-1);
            }
        }

        public uint getOpcode()
        {
            return this.Opcode;
        }

        public string[] getOperands()
        {
            return this.Operands;
        }

        public void printAssemblyInstruction()
        {
            string currentdir = System.Environment.CurrentDirectory + "/"; // current working directory
            string outfile = currentdir + "Output.asm";
            if (File.Exists(outfile)) // if file exists delete and create it again so it is empty
            {
                File.Delete(outfile);
            }
            //File.Create(outfile);
            StreamWriter writer = new StreamWriter(currentdir + "Output.asm", true); // writer to write to the assembly file
            //writer.Write(" ");
            if (this.Operands != null) // if this instruction has operands
            {
                writer.Write((EnumOpcodes)this.Opcode); // write the opcode to the file
                writer.Write(" "); // Followed by a space
                for (int i = 0; i < this.Operands.Length; i++)
                {
                    writer.Write(this.Operands[i]); // write operand to the file
                    //if (i == 0)
                    //{
                    //    writer.Write(" ");
                    //}
                    if (i != Operands.Length - 1)  // if we are not at the last operand write a seperating comma
                    {
                        writer.Write(',');
                    }
                    //writer.Write(",");
                }
                writer.WriteLine();
            }
            else
            {
                writer.Write((EnumOpcodes)this.Opcode);
                writer.WriteLine();
            }
            writer.Flush();
            writer.Close();
            writer.Dispose(); // flush and close the writer
            return;
        }

        public void PrintBinaryInstruction()
        {
            byte[] opcodebytes = BitConverter.GetBytes(this.Opcode); // Array to hold the byte value of the opcode
            List<byte[]> operandbyes = new List<byte[]>(0);     // Array to hold the byte value of the operands
            string currentdir = System.Environment.CurrentDirectory + "/";
            string outfile = "Output.o";
            ELFFile elf;
            BinaryWriter writer;
            if (File.Exists(outfile))
            {
                File.Delete(outfile);
            }
            else
            {
                File.Create(outfile);
            }
            elf = new ELFFile(outfile);
            writer = new BinaryWriter(File.Open(currentdir + outfile, FileMode.OpenOrCreate, FileAccess.ReadWrite));
            //writer.Write(" ");
            if (this.Operands != null)
            {
                writer.Seek(0, SeekOrigin.End);
                if (BitConverter.IsLittleEndian)
                {
                    Array.Reverse(opcodebytes); // if the system is little endian (least significant byte first) reverse the array so the bytes print in the correct order
                }
                for (int i = 0; i < opcodebytes.Length; i++)
                {
                    writer.Write(opcodebytes[i]); // write the opcode bytes to the object file
                }

                for (int i = 0; i < Operands.Length; i++)
                {
                    operandbyes.Add(Encoding.ASCII.GetBytes(Operands[i])); // write the opcode bytes to the object file
                }

                foreach (byte[] b in operandbyes)
                {
                    if (BitConverter.IsLittleEndian) // if the system is little endian (least significant byte first) reverse the array so the bytes print in the correct order
                    {
                        Array.Reverse(b);
                    }
                    for (int i = 0; i < b.Length; i++) // write the operand bytes to the object file
                    {
                        Console.WriteLine(b[i]);
                        //Console.ReadKey();
                        writer.Write(b[i]);
                    }
                }

                //writer.Write((Convert.ToString(this.Opcode, 2)));
                //writer.Write(" ");

                //for (int i = 0; i < this.Operands.Length; i++)
                //{
                //    foreach (byte b in this.Operands[i])
                //    {
                //        writer.Write(b);
                //        //writer.Write(" ");
                //    }
                //    //writer.Write(",");
                //}
                //writer.WriteLine();
            }
            else
            {
                for (int i = 0; i < opcodebytes.Length; i++)
                {
                    writer.Write(opcodebytes[i]); // write the opcode bytes to the object file
                }
            }
            writer.Flush();
            writer.Close();
            writer.Dispose(); // flush and close the writer
            //Environment.Exit(0);
            return;
        }
    }
}