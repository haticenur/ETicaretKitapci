using BLL;
using DAL;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client.Admin
{
    public partial class ProductForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryBLL cb=new CategoryBLL();
            if (IsPostBack) return;
            ddlCategories.DataValueField = "Id";
            ddlCategories.DataTextField = "Name";
            ddlCategories.DataSource = cb.Get(x => x.IsActive == true).ToList();
            ddlCategories.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Product p = new Product();
            //p.Name = txtProductName.Text;
            //p.Price =Convert.ToDecimal(txtPrice.Text);
            //p.Stock =Convert.ToInt16(txtStock.Text);
            //p.CategoryId =Convert.ToInt32(ddlCategories.SelectedValue);
            //string fileName = Guid.NewGuid().ToString().Replace("-",""); 
            //string ext = Path.GetExtension(fl.FileName);

           
            //fileName += ext;

            //fl.SaveAs(MapPath("~/ProductImages/")+fileName);

            //p.IsActive = true;
            //p.Date = DateTime.Now;

            //ProductBLL pb = new ProductBLL();
            //pb.Add(p);

            //Response.Redirect("Products.aspx");
            Product p = new Product();
            p.Name = txtProductName.Text;
            p.CategoryId = Convert.ToInt32(ddlCategories.SelectedValue);
            p.Stock = Convert.ToInt16(txtStock.Text);
            p.Price = Convert.ToDecimal(txtPrice.Text);

            string fileName = Guid.NewGuid().ToString().Replace("-", "");

            string ext = Path.GetExtension(fl.FileName);

            fileName += ext;


            fl.SaveAs(MapPath("~/ProductImages/") + fileName);

            p.Image = fileName;
            p.IsActive = true;
            p.Date = DateTime.Now;

            ProductBLL pb = new ProductBLL();

            pb.Add(p);

            Response.Redirect("Products.aspx");
        }
    }
}