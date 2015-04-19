namespace Compiler
{
    internal enum EnumTokenType
    {
        UNKNOWN = 0x00,
        CHARACTER = 0x01,
        INTEGER = 0x02,
        FLOATING_POINT = 0x03,
        OPENING_BRACE = 0x04,
        CLOSING_BRACE = 0x05,
        OPENING_CURLY_BRACE = 0x06,
        CLOSING_CURLY_BRACE = 0x07,
        OPENING_SQUARE_BRACE = 0X08,
        CLOSING_SQUARE_BRACE = 0x09,
        COMMA = 0x0A,
        COLON = 0x0B,
        SEMICOLON = 0x0C,
        SPACE = 0x0D,
        TAB = 0X0E,
        SINGLE_QUOTE = 0x0F,
        DOUBLE_QUOTE = 0x10,
        BACKSLASH = 0x11,
        FORWARDSLASH = 0x12,
        END_OF_FILE = 0x13
    }
}