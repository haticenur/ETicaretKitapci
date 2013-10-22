using BLL;
using Client.Models;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace Client
{
    public partial class detail : System.Web.UI.Page
    {
        public Product product;

        protected void Page_Load(object sender, EventArgs e)
        {
       
            if (Request.QueryString["productId"] == null)
            {
                Response.Redirect("default.aspx");
            }

            int id = Convert.ToInt32(Request.QueryString["productId"]);

            ProductBLL pb = new ProductBLL();

            product = pb.Get(x => x.Id == id).FirstOrDefault();
        }

        protected void btnAddCart_Click(object sender, EventArgs e)
        {
            

            if (Helper.Sepet == null)

                Helper.Sepet = new List<ProductDTO>();
            int id = Convert.ToInt32(Request.QueryString["productId"]);
            byte quantity = Convert.ToByte(ddlQuantity.SelectedValue);

            ProductDTO pdto = new ProductDTO();

            pdto.Id = id;
            pdto.Quantity = quantity;

            pdto.Price = product.Price;

            pdto.Name = product.Name;
            pdto.Image = product.Image;


            Helper.Sepet.Add(pdto);

            Response.Redirect(Request.RawUrl);


        }
    }
}