using Microsoft.Extensions.DependencyInjection;

namespace MT4_To_CSharp_Bridge.DI
{
    public interface IDiTransientService : IDiService
    {
        ServiceLifetime IDiService.Lifetime => ServiceLifetime.Transient;
    }
}
