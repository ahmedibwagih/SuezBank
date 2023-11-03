using SuezBank.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SuezBank
{
    public partial class ContactsData : System.Web.UI.Page
    {
        protected  void Page_Load(object sender, EventArgs e)
        {
            UnitOfWork.UnitOfWork unitOfWork = new UnitOfWork.UnitOfWork(new ApplicationDbContext());
            GridContacts.DataSource =  unitOfWork.ContactUsRepository.GetAll().ToList();
            GridContacts.DataBind();
        
        }
    }
}