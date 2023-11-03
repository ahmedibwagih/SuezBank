using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuezBank.IRepositories
{

    public interface IRepository<T> where T : class
    {

        List<T> GetAll();
        Task<List<T>> GetAllAsync();
        Task<List<T>> GetAsync(string cond);
        Task<T> GetByIdAsync(long id);
        Task<T> GetByIdLightAsync(long id);
        Task<T> Add(T entity);
        Task<IList<T>> AddRange(IList<T> entity);
        void Delete(T entity);
        void Delete(IEnumerable<T> entities);
    }
}
