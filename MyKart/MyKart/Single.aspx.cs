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
    public partial class Single : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String p="",s = "", name = "",  description = "",iurl="";
            int price,id;
            s = Request.QueryString["field1"];
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            String query = "select * from tblItems where Id=" + s + "";
            SqlCommand com = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable dt = new DataTable();
            da.Fill(dt);
            conn.Close();
            id=(int)dt.Rows[0][0];
            name = (String)dt.Rows[0][1];
            description = (String)dt.Rows[0][2];
            price = (int)dt.Rows[0][6];
            p=Convert.ToString(price);
            iurl = (String)dt.Rows[0][4];
            lblname.Text = name;
            lblprice.Text = p;
            lbldescription.Text = description;
            imgitem.ImageUrl=iurl;
            hlatc.ID = id.ToString();
            
        }
        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static string Cartmanager(int id)
        {
            String result = "";
            int userid;
            if (HttpContext.Current.Session["username"] != null)
            {
                userid = Convert.ToInt32(HttpContext.Current.Session["username"]);
                result = "Added to cart";
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
                conn.Open();
                SqlCommand com = new SqlCommand("InCart", conn);
                com.Parameters.AddWithValue("@Clientid", userid);
                com.Parameters.AddWithValue("@pid", id);
                com.Parameters.AddWithValue("@added", 1);
                com.Parameters.AddWithValue("@purchased", 0);
                com.CommandType = CommandType.StoredProcedure;
                com.ExecuteNonQuery();
                conn.Close();
                return result;
            }
            else
            {
                result="Login first";
                return result;
            }
        }
     
    }
}