using BLL;
using Client.Models;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client.Admin
{
    public partial class CategoryForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Helper.Sayfalar = new List<string> { "Kategoriler", "Kategori Ekle" };

            if (IsPostBack) return;

            int id = Convert.ToInt32(Request.QueryString["catId"]);
            CategoryBLL cb = new CategoryBLL();
            if (Request.QueryString["catId"] != null)
            {

                Category c = cb.Get(x => x.Id == id).FirstOrDefault();
                txtCategoryName.Text = c.Name;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id=Convert.ToInt32(Request.QueryString["catId"]);
            CategoryBLL cb = new CategoryBLL();
            if (Request.QueryString["catId"]==null)
            {
                Category c = new Category();
                c.Name = txtCategoryName.Text;
                c.Date = DateTime.Now;
                c.IsActive = true;

               
                cb.Add(c);
            }
            else
            {
                Category c = cb.Get(x => x.Id == id).FirstOrDefault();
                c.Name = txtCategoryName.Text;
                cb.Update(c);
                Response.Redirect("Categories.aspx");

            }
            
        }
    }
}