using SuezBank.IRepositories;
using SuezBank.Models;
using SuezBank.Repositories;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace SuezBank.UnitOfWork
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext context;

        public IContactUsRepository ContactUsRepository { get; }

        public UnitOfWork(ApplicationDbContext context)
        {
            this.context = context;
            ContactUsRepository = new  ContactUsRepository(context);
        }

        public async Task<int> CompleteAsync()
        {
            try
            {
                return await context.SaveChangesAsync();
            }
            catch (Exception)
            {
                RollbackTran();
                throw;
            }

        }

        public object GetRepositoryByName(string name)
        {
            var type = GetType();
            var info = type.GetProperty(name);
            if (info == null)
                throw new Exception("" + name + "." + type.FullName);

            return info.GetValue(this, null);
        }

        public async void BeginTran()
        {
             context.Database.BeginTransaction();
        }

        public async void CommitTran()
        {
             context.Database.CurrentTransaction.Commit();
        }

        public async void RollbackTran()
        {
            var transaction = context.Database.CurrentTransaction;
            if (transaction != null)
                 context.Database.CurrentTransaction.Rollback();
        }
    }
}