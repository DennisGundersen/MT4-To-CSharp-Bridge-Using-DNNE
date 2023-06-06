using Microsoft.Extensions.DependencyInjection;

namespace MT4_To_CSharp_Bridge.DI
{
    public interface IDiSingletonService : IDiService
    {
        ServiceLifetime IDiService.Lifetime => ServiceLifetime.Singleton;
    }
}
