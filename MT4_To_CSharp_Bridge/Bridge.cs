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
    }
}
