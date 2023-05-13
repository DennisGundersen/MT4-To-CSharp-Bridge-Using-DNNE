#define BY_REF
#define BOOLS
#define STRINGS
#define ASYNC

using DNNE;
using MT4_To_CSharp_Bridge.Tools;
using System;
using System.Globalization;
using System.Runtime.InteropServices;
using System.Threading.Tasks;

namespace MT4_To_CSharp_Bridge
{
    public static class Bridge
    {
        [UnmanagedCallersOnly(EntryPoint = "GimmeAnInt")]
        public static int GimmeAnInt(int a)
        {
            a += 1;
            return a;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetIntSum")]
        public static int GetIntSum(int a, int b)
        {
            a += b;
            b += 2;
            return a;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetSum")]
        public static int GetSum(int a, double b)
        {
            a += (int)b;
            b += 2;
            return a;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetSumDoubles")]
        public static int GetSumDoubles(double a, double b)
        {
            a += b;
            b += 2.8;
            return (int)a;
        }


#if BY_REF
        [UnmanagedCallersOnly(EntryPoint = "GimmeAnIntRefDummy")]
        public unsafe static int GimmeAnIntRefDummy(int* a)
        {
            return 1;
        }

        [UnmanagedCallersOnly(EntryPoint = "GimmeAnIntRef")]
        public unsafe static int GimmeAnIntRef(int* a)
        {
            return *a;
        }

        [UnmanagedCallersOnly(EntryPoint = "GimmeAnIntRefMod")]
        public unsafe static int GimmeAnIntRefMod(int* a)
        {
            *a += 1;
            return *a;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetIntSumRef")]
        public unsafe static int GetIntSumRef(int* a, int* b)
        {
            *a += 1;
            *b += 2;
            return *a + *b;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetSumRef")]
        public unsafe static int GetSumRef(int* a, double* b)
        {
            *a += 1;
            *b += 2.8;
            return *a + (int)*b;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetSumDoublesRef")]
        public unsafe static int GetSumDoublesRef(double* a, double* b)
        {
            *a += 1.6;
            *b += 2.2;
            return (int)(*a + *b);
        }
#endif


#if BOOLS

        [UnmanagedCallersOnly(EntryPoint = "GetNot")]
        public static byte GetNot(byte a)
        {
            return MQL4Converter.WriteBool(GetNotManaged(MQL4Converter.ReadBool(a)));
        }
        public static bool GetNotManaged(bool a)
        {
            return !a;
        }
#endif


#if STRINGS
        [StructLayout(LayoutKind.Sequential, CharSet = CharSet.Unicode)]
        public struct MQLString
        {
            public int size;
            public IntPtr buffer;
            int reserved;
        }

        [UnmanagedCallersOnly(EntryPoint = "GetStringLength")]
        public unsafe static int GetStringLength([C99Type("wchar_t *")] char *a)
        {
            string b = new string(a);
            return b.Length;
        }

        [UnmanagedCallersOnly(EntryPoint = "ConvertHexToInt")]
        public unsafe static int ConvertHexToInt([C99Type("wchar_t *")] char *a)
        {
            string b = new string(a);
            int result;
            bool correct = int.TryParse(b, System.Globalization.NumberStyles.HexNumber, CultureInfo.InvariantCulture, out result);
            return correct ? result : -1;
        }
#endif


#if ASYNC
        [UnmanagedCallersOnly(EntryPoint = "GetIntAsync")]
        public static int GetIntAsync(int value, int pause = 3)
        {
            Task<int> task = Task.Run<int>(async () => await GetIntManagedAsync(value, pause));
            return task.Result;
        }

        public static async Task<int> GetIntManagedAsync(int value, int pause = 3)
        {
            await Task.Delay(pause * 1000);
            return ++value;
        }
#endif
    }
}
