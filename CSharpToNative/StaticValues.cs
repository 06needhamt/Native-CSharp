using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Native.CSharp.Compiler
{
    class StaticValues
    {
        private static int errors = 0;

        public static int Errors
        {
            get { return StaticValues.errors; }
            set { StaticValues.errors = value; }
        }
        private static int warnings = 0;

        public static int Warnings
        {
            get { return StaticValues.warnings; }
            set { StaticValues.warnings = value; }
        }
    }
}
