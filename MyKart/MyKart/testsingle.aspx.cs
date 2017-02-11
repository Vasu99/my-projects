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
    public partial class testsingle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request.QueryString["field1"];
            String query = "select * from tblItems where Id="+s;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(query, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);

            dlitemshow.DataSource = ds.Tables[0];
            dlitemshow.DataBind();
            conn.Close();
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
                result = "Login first";
                return result;
            }
        }
    }
}