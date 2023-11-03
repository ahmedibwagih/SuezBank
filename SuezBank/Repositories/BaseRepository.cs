using SuezBank.IRepositories;
using SuezBank.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Linq.Dynamic.Core;
using System.Web;


namespace SuezBank.Repositories
{
    public class BaseRepository
    {
    }

    public class BaseRepository<T> : IRepository<T> where T : class
    {
        protected readonly ApplicationDbContext Context;
        protected readonly DbSet<T> DbSet;

        public BaseRepository(ApplicationDbContext context)
        {
            this.Context = context;
            DbSet = this.Context.Set<T>();
        }


        public virtual IQueryable<T> GetQueryableForGetAllPaging()
        {
            return DbSet.AsQueryable();
        }

        public virtual  List<T> GetAll()
        {
            return  DbSet.ToList();
        }

        public virtual async Task<List<T>> GetAllAsync()
        {
            return await DbSet.ToListAsync();
        }
        public virtual async Task<List<T>> GetAsync(string cond)
        {
            try
            {
                var query = DbSet.AsQueryable();
                query = query.Where(cond);
                return await query.ToListAsync();
            }
            catch (Exception ex)
            {

            }
            return null;
        }

        public virtual async Task<T> GetByIdAsync(long id)
        {
            return await Context.Set<T>().FindAsync(id);
        }

        public virtual async Task<T> GetByIdLightAsync(long id)
        {
            try
            {
                return await Context.Set<T>().FindAsync(id);
            }
            catch { }

            return null;
        }

        public virtual async Task<T> Add(T entity)
        {
            DbSet.Add(entity);
            return entity;
        }

        public virtual async Task<IList<T>> AddRange(IList<T> entity)
        {
            DbSet.AddRange(entity);
            return entity;
        }

        public virtual void Delete(T entity)
        {
            DbSet.Remove(entity);
        }

        public virtual void Delete(IEnumerable<T> entities)
        {
            DbSet.RemoveRange(entities);
        }
    }
}