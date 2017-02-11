using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace MyKart
{
    public partial class AddItem : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnadditem_Click(object sender, EventArgs e)
        {
              string path = "";
              if (FileUpload1.HasFile)
              {
                  try
                  {
                      string filename = Path.GetFileName(FileUpload1.FileName);
                      FileUpload1.SaveAs(Server.MapPath("~/Images/") + filename);
                      //  lblmessage.Text = "Upload status: File uploaded!";
                      path = "~/Images/" + filename;
                      SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
                      conn.Open();
                      SqlCommand com = new SqlCommand("SP_AddItem", conn);
                      com.Parameters.AddWithValue("@name", txtitemname.Text);
                      com.Parameters.AddWithValue("@description", txtdescp.Value);
                      com.Parameters.AddWithValue("@color", txtcolor.Value);
                      com.Parameters.AddWithValue("@imageurl", path);
                      com.Parameters.AddWithValue("@brand", ddlbrand.Value);
                      com.Parameters.AddWithValue("@price", txtprice.Value);
                      com.Parameters.AddWithValue("@itemtype", ddltype.Value);
                      com.CommandType = CommandType.StoredProcedure;
                      com.ExecuteNonQuery();
                      conn.Close();

                  }
                  catch (Exception ex)
                  {
                      Response.Write("Upload Unsuccesful  " + ex.Message);

                  }
              
              }
        }
    }
}