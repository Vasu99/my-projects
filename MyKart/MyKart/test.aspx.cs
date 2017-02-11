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
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntestitemsearch_Click(object sender, EventArgs e)
        {
            String query = "select * from tblItems where Name LIKE '%"+txttestsearch.Text+"%'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(query, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);

            dltest.DataSource = ds.Tables[0];
            dltest.DataBind();
            conn.Close();
           
        }
    }
}