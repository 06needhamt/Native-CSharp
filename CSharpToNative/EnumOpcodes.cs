namespace Native.CSharp.Compiler
{
    internal enum EnumOpcodes
    {
        #region Arithmetic

        ADD = 1, //Integer add
        ADC = 2, //Add with carry
        SUB = 3, //Subtract
        SBB = 4, //Subtract with borrow
        IMUL = 5, //Signed multiply
        MUL = 6, //Unsigned multiply
        IDIV = 7, //Signed divide
        DIV = 8, //Unsigned divide
        INC = 9, //Increment
        DEC = 10, //Decrement
        NEG = 11, //Negate

        #endregion Arithmetic

        #region Logic

        CMP = 12, //Compare
        AND = 13, //And
        OR = 14, //Or
        XOR = 15, //Exclusive or
        NOT = 16,//Not

        #endregion Logic

        #region Data

        MOV = 17

        #endregion Data
    }
}