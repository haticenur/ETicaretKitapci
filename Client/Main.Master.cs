using BLL;
using Client.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Client
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Helper.Sepet != null)
            {
                ltrQuantiy.Text = Helper.Sepet.Count.ToString();
                decimal total = 0;
                foreach (var p in Helper.Sepet)
                {
                    total += p.Price * p.Quantity;
                }
                ltrTotal.Text = String.Format("{0:0.00}", total);
            }
            else
            {
                ltrQuantiy.Text = "0";
                ltrTotal.Text = "0";
            }

            if (IsPostBack) return;


            CategoryBLL cb = new CategoryBLL();

            rptCategories.DataSource = cb.Get(x => x.IsActive == true).ToList();
            rptCategories.DataBind();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(txtLoginName.Text, txtLoginPassword.Text) & Roles.IsUserInRole(txtLoginName.Text, "User"))
            {
                FormsAuthentication.SetAuthCookie(txtLoginName.Text, true);
                Response.Redirect(Request.RawUrl);
            }
        }

        protected void btnCreateUser_Click(object sender, EventArgs e)
        {

            try
            {

                Membership.CreateUser(txtName.Text, txtPass.Text, txtEmail.Text);
                Roles.AddUserToRole(txtName.Text, "User");
                FormsAuthentication.SetAuthCookie(txtName.Text, true);
                Response.Redirect(Request.RawUrl);

            }
            catch (MembershipCreateUserException ex)
            {

                ltrError.Text = GetErrorMessage(ex.StatusCode);

            }

        }
        public string GetErrorMessage(MembershipCreateStatus status)
        {
            switch (status)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "Bu kullanıcı adı kullanılmakta,Başka bir kullanıcı adı deneyin";

                case MembershipCreateStatus.DuplicateEmail:
                    return "Bu  email kullanılmakta,Başka bir  email deneyin";

                case MembershipCreateStatus.InvalidPassword:
                    return "Geçersiz şifre";

                case MembershipCreateStatus.InvalidEmail:
                    return "Geçersiz email";
                case MembershipCreateStatus.InvalidUserName:
                    return "Geçersiz kullanıcı adı";

                //case MembershipCreateStatus.InvalidAnswer:
                //    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                //case MembershipCreateStatus.InvalidQuestion:
                //    return "The password retrieval question provided is invalid. Please check the value and try again.";



                //case MembershipCreateStatus.ProviderError:
                //    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                //case MembershipCreateStatus.UserRejected:
                //    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }
    }
}