using Microsoft.Extensions.DependencyInjection;

namespace MT4_To_CSharp_Bridge.DI
{
    public interface IDiScopedService : IDiService
    {
        ServiceLifetime IDiService.Lifetime => ServiceLifetime.Scoped;
       
    }
}
