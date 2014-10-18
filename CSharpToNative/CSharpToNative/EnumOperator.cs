using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    public enum EnumOperator
    {
        NO_OPERATOR = -1,
        ASSIGNMEMT = 0,
        EQUALITY = 1,
        NOT_EQUAL = 2,
        UNARY_PLUS = 3,
        UNARY_MINUS = 4,
        UNARY_MULTIPLY = 5,
        UNARY_DIVIDE = 6,
        INCREMENT_PREFIX = 7,
        INCREMENT_POSTFIX = 8,
        DECREMENT_PREFIX = 9,
        DECREMENT_POSTFIX = 10,
        GREATER_THAN = 11,
        LESS_THAN = 12,
        GREATER_THAN_AND_EQUAL = 13,
        LESS_THAN_AND_EQUAL = 14,
        LOGICAL_AND = 15,
        BITWISE_AND = 16,
        LOGICAL_OR = 17,
        BITWISE_OR = 18,
        LOGICAL_NOT = 19,
        BITWISE_NOT = 20,
        BITWISE_XOR = 21,
        ADDITION_ASSIGNMENT = 22,
        SUBTRACTION_ASSIGNMENT = 23,
        MULTIPLICATION_ASSIGNMENT = 24,
        DIVISION_ASSIGNMENT = 25,
        BITWISE_LEFT_SHIFT = 26,
        BITWISE_RIGHT_SHIFT = 27,
        MODULO_ASSIGNMENT = 28,
        BITWISE_AND_ASSIGNMENT = 29,
        BITWISE_OR_ASSIGNMENT = 30,
        BITWISE_XOR_ASSIGNMENT = 31,
        BITWISE_LEFT_SHIFT_ASSIGNMENT = 32,
        BITWISE_RIGHT_SHIFT_ASSIGNMENT = 33,
        TERNARY = 34,
        DOT = 35,
        COMMA = 36,
    }
}
