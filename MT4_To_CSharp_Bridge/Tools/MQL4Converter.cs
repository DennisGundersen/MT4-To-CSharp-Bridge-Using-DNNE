namespace MT4_To_CSharp_Bridge.Tools
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
