using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ProductBLL pb = new ProductBLL();

            
            if (Request.QueryString["categoryId"] == null)
            {


                rptProducts.DataSource = pb.Get(x => x.IsActive == true).ToArray();
                rptProducts.DataBind();
            }

      

            else if (Request.QueryString["categoryId"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["categoryId"]);
                rptProducts.DataSource = pb.Get(x => x.CategoryId == id & x.IsActive == true).ToArray();
                rptProducts.DataBind();

            }

          
        }
    }
}