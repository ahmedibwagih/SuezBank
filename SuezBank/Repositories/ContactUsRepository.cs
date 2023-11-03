using SuezBank.IRepositories;
using SuezBank.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;

namespace SuezBank.Repositories
{


    public class ContactUsRepository : BaseRepository<ContactUs>, IContactUsRepository
    {

        public ContactUsRepository(ApplicationDbContext context) : base(context)
        {

        }


    }

}