using System.Runtime.InteropServices;

namespace MT4_To_CSharp_Bridge
{
    public static class Bridge
    {
        [UnmanagedCallersOnly(EntryPoint = "GimmeAnInt")]
        public static int GimmeAnInt(int a)
        {
            return a + 1;
        }


        [UnmanagedCallersOnly(EntryPoint = "GimmeAnIntSum")]
        public static int GimmeAnIntSum(int a, int b)
        {
            return a + b;
        }

        [UnmanagedCallersOnly(EntryPoint = "GimmeAnSum")]
        public static int GimmeAnSum(int a, double b)
        {
            return a + (int)b;
        }


        /*
        [UnmanagedCallersOnly(EntryPoint = "GetAnswerByValue")]
        public static int GetAnswerByValue(int a, double b, bool c)
        {
            return a + (int)b + (c ? 1 : 0);
        }
        */

        /*
        [UnmanagedCallersOnly(EntryPoint = "GetAnswerByValueEx")]
        public static int GetAnswerByValueEx(int a, double b, bool c, string d)
        {
            return a + (int)b + (c ? 1 : 0);
        }
        */


        //[UnmanagedCallersOnly(EntryPoint = "GetAnswerByReference")]
        //public static void GetAnswerByReference(ref int a, ref double b, ref bool c, ref string d)
        //{
        //    a *= 2;
        //    b *= 2;
        //    c = !c;
        //    d = "This is the result from C#";
        //}


        //[UnmanagedCallersOnly(EntryPoint = "GetAnswerByJSONObject")]
        //public static string GetAnswerByJSONObject(int a, double b, bool c, string d)
        //{
        //    string json = "Turn variables into serialized string";
        //    return json;
        //}
    }
}
