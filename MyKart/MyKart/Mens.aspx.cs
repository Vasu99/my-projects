using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyKart
{
    public partial class Mens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String query = "select * from tblItems where ItemType='Mens'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(query, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);

            dlmenitems.DataSource = ds.Tables[0];
            dlmenitems.DataBind();
            conn.Close();
        }
    }
}