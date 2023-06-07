using System;

namespace MT4_To_CSharp_Bridge.DI
{
    internal sealed class DiTransientService : IDiTransientService
    {
        Guid IDiService.Id { get; } = Guid.NewGuid();

        string IDiService.Name { get; } = "TransientService";

        int IDiService.Number { get; } = Random.Shared.Next(-9, 9);
    }
}
