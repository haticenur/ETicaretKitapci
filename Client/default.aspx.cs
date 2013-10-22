using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["logout"] == "true")
            {
                FormsAuthentication.SignOut();
                Session.Abandon();
                Response.Redirect("default.aspx");
            
            }
       

            ProductBLL pb = new ProductBLL();

            rptProducts.DataSource = pb.Get(x => x.IsActive == true).OrderByDescending(x => x.Date).Take(2).ToArray();
            rptProducts.DataBind();
        }
    }
}