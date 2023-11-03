using Microsoft.AspNet.Identity;
using SuezBank.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace SuezBank
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_LoggingOut(object sender, LoginCancelEventArgs e)
        {
            Context.GetOwinContext().Authentication.SignOut(DefaultAuthenticationTypes.ApplicationCookie);
        }

        protected  void Button1_Click(object sender, EventArgs e)
        {
            int age = 0;
            int.TryParse(TxtAge.Value, out age);

            UnitOfWork.UnitOfWork unitOfWork = new UnitOfWork.UnitOfWork(new ApplicationDbContext());
             unitOfWork.ContactUsRepository.Add(new ContactUs()
            {
                CustomerAge = age,
                CustomerEmail=TxtEmail.Value,
                CustomerMessage=TxtMessage.InnerHtml.ToString(),
                CustomerName=TxtName.Value,
                CustomerNationalId=TxtNationalId.Value,
                
            CustomerPhone =TxtPhone.Value
            });
            TxtEmail.Value = "";
            TxtMessage.Value = "";
            TxtName.Value = "";
            TxtNationalId.Value = "";
            TxtPhone.Value = "";
            TxtAge.Value = "";

            unitOfWork.CompleteAsync();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Message  Successfully Sent')</script>");
         
            

        }
    }
}