using System;

namespace MT4_To_CSharp_Bridge.DI
{
    internal sealed class DiSingletonService : IDiSingletonService
    {
        Guid IDiService.Id { get; } = Guid.NewGuid();

        string IDiService.Name { get; } = "SingletonService";

        int IDiService.Number { get; } = Random.Shared.Next(-9, 9);
    }
}
