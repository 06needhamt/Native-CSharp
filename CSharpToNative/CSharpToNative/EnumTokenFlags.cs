using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CSharpToNative
{
    internal enum EnumTokenFlags
    {
        NO_FLAGS = 0x00,
        StartOfLine = 0x01,  // At start of line or only after whitespace
        // (considering the line after macro expansion).
        LeadingSpace = 0x02,  // Whitespace exists before this token (considering 
        // whitespace after macro expansion).
        DisableExpand = 0x04,  // This identifier may never be macro expanded.
        NeedsCleaning = 0x08,  // Contained an escaped newline or trigraph.
    }
}
