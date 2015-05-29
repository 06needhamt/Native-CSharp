namespace Native.CSharp.Compiler
{
    internal static class RegisterSet
    {
#if WIN64

        #region 64BITS

        public const string RAX = "RAX";
        public const string RBX = "RAX";
        public const string RCX = "RCX";
        public const string RDX = "RDX";
        public const string R7 = "R7";
        public const string R8 = "R8";
        public const string R9 = "R9";
        public const string R10 = "R10";
        public const string R11 = "R11";
        public const string R12 = "R12";
        public const string R13 = "R13";
        public const string R14 = "R14";
        public const string R15 = "R15";

        #endregion 64BITS

#endif

        #region 32BITS

        public const string EAX = "EAX";
        public const string EBX = "EBX";
        public const string ECX = "ECX";
        public const string EDX = "EDX";

        #endregion 32BITS

        #region 16BITS

        public const string AX = "AX";
        public const string BX = "BX";
        public const string CX = "CX";
        public const string DX = "DX";

        #endregion 16BITS

        #region 8BITS

        public const string AL = "AL";
        public const string BL = "BL";
        public const string CL = "CL";
        public const string DL = "DL";
        public const string AH = "AH";
        public const string BH = "BH";
        public const string CH = "CH";
        public const string DH = "DH";

        #endregion 8BITS
    }
}