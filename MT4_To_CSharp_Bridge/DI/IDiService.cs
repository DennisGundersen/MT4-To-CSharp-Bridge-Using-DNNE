using Microsoft.Extensions.DependencyInjection;
using System;

namespace MT4_To_CSharp_Bridge.DI
{
    public interface IDiService
    {
        Guid Id { get; }
        string Name { get; }
        ServiceLifetime Lifetime { get; }
        int Number { get; }
        public int GetInt()
        {
            return Number;
        }
    }
}