using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MT4_To_CSharp_Bridge
{
    internal class MQL4Converter
    {
        const byte BOOL_TRUE = 1;
        const byte BOOL_FALSE = 0;
        public static bool ReadBool(byte a)
        {
            return a == BOOL_TRUE;
        }

        public static byte WriteBool(bool a)
        {
            return a ? BOOL_TRUE : BOOL_FALSE;
        }
    }
}
