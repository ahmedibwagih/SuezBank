using SuezBank.IRepositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuezBank.UnitOfWork
{

    public interface IUnitOfWork
    {

         IContactUsRepository ContactUsRepository { get; }

        Task<int> CompleteAsync();

        void BeginTran();

        void CommitTran();

        void RollbackTran();

        object GetRepositoryByName(string name);
    }
}
