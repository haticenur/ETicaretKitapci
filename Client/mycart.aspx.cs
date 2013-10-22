using BLL;
using Client.Models;
using DAL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Client
{
    public partial class mycart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Helper.Sepet == null)
                Helper.Sepet = new List<ProductDTO>();

            decimal total = 0;
            foreach (var p in Helper.Sepet)
            {
                total += p.Price * p.Quantity;
            }
            ltrTotal.Text = String.Format("{0:0.00}", total);

            rptCart.DataSource = Helper.Sepet;
            rptCart.DataBind();
        }

        public static string Total(string price, string quantiy)
        {
            decimal total = Convert.ToByte(quantiy) * Convert.ToDecimal(price);

            return String.Format("{0:0.00}", total);
        }

        public string CreateOrderNo()
        {
            string str = "";
            Random rnd = new Random();

            for (int i = 0; i < 6; i++)
            {
                int a = rnd.Next(48, 58);
                str += Convert.ToChar(a).ToString();

            }

            return str;


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Order o = new Order();
            o.OrderNo = CreateOrderNo();// rastgele oluştur
            o.UserId = new Guid(Membership.GetUser().ProviderUserKey.ToString());
            o.Date = DateTime.Now;

            OrderBLL ob = new OrderBLL();

            ob.Add(o);

            ProductBLL pb = new ProductBLL();
            foreach (var p in Helper.Sepet)
            {
                OrderDetail od = new OrderDetail();
                od.OrderId = o.Id;
                od.ProductId = p.Id;
                od.Quantity = p.Quantity;

                OrderDetailBLL obll = new OrderDetailBLL();
                obll.Add(od);


                Product pr = pb.Get(x => x.Id == p.Id).FirstOrDefault();

                pr.Stock -= p.Quantity;
                pb.Update(pr);

                Helper.Sepet = new List<ProductDTO>();

            }

        }

        protected void rptCart_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            int id = Convert.ToInt32(e.CommandArgument);

            ProductDTO pdto = Helper.Sepet.Where(x => x.Id == id).FirstOrDefault();

            Helper.Sepet.Remove(pdto);
          

            Response.Redirect(Request.RawUrl);
        }
    }
}