using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyKart
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                btnitembuy.Visible = false;
                lbltotalsum.Visible = false;
            }
            int id;
            if (Session["username"] != null)
            {
                int price=0, sum = 0;
                btnitembuy.Visible = true;
                lblmessage.Visible = false;
                lbltotalsum.Visible = true;
                id = Convert.ToInt32(Session["username"]);
                DataTable dt = new DataTable();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand("ShowItems", conn);
                com.Parameters.AddWithValue("@clientid",id);
                com.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(com);
                da.Fill(dt);
                foreach(DataRow Rows in dt.Rows)
                {
                    int i = 0;
                    price = Convert.ToInt32(Rows["Price"]);
                    sum = sum + price;
                    i++;
                }
                lbltotalsum.Text = "Total sum is Rs." + sum;
                
                gdcheckout.DataSource = dt;
                gdcheckout.DataBind();
                conn.Close();
            }
            else
            {
                lblmessage.Text = "Login To See The Checkout List";
            }


        }

        protected void btncartbuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string RemoveItem(int id)
        {
            String result = "";
            if (HttpContext.Current.Session["username"] != null)
            {
                result = "Removed from cart";
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand("RemoveItem", conn);
                com.Parameters.AddWithValue("@id",id);
                com.CommandType = CommandType.StoredProcedure;
                com.ExecuteNonQuery();
                conn.Close();
                return result;
            }
            else
            {
                result = "Item Not Removed";
                return result;
            }
        }
     
      
    }
}