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
    public partial class mysite : System.Web.UI.MasterPage
    {
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "";
            
                if (Session["username"] == null)
                {
                    alogout.Visible = false;
                }
                if (Session["username"] != null)
                {
                    alogin.Visible = false;
                    lblname.Text = name;
                }
                if (Session["username"] != null)
                {
                    lblname.Text = Convert.ToString(Session["name"]);
                }
            

        }
        protected void registerUser(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("Registration", conn);
            com.Parameters.AddWithValue("@role", "Client");
            com.Parameters.AddWithValue("@name", txtnamemaster.Value);
            com.Parameters.AddWithValue("@email", txtemailmaster.Value);
            com.Parameters.AddWithValue("@password", txtpasswordmaster.Value);
            com.Parameters.AddWithValue("@phone", txtphonemaster.Value);
            com.CommandType = CommandType.StoredProcedure;
            com.ExecuteNonQuery();
            conn.Close();
        }

        protected void loginUser(object sender, EventArgs e)
        {
            string name = "";
            string role="";
            int id=0;
            DataTable dt = new DataTable();
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand("logincheck",conn);
            com.Parameters.AddWithValue("@email", txtloginemailmaster.Value);
            com.Parameters.AddWithValue("@password", txtloginpasswordmaster.Value);
            com.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(com);
            da.Fill(dt);
            conn.Close();
            if (dt.Rows.Count > 0)
            {
                id = (int)dt.Rows[0][0];
                role = (string)dt.Rows[0][1];
                name=(string)dt.Rows[0][2];
            }
            if(!string.IsNullOrEmpty(Convert.ToString(role)))
            {
                Session["username"]=id;
                Session["role"] = role;
                Session["name"] = name;
                Response.Write("Successfully logged in"+Session["role"]);
                lblname.Text = name;
                alogin.Visible = false;
                alogout.Visible = true;

            }
            else
            {
                Response.Write("Wrong email or password");
            }

        }
        public void addtocart(object sender, EventArgs e)
        {
            Response.Write("inside add to cart " + Session["username"]);
            i++;
            lblcart.Text = i.ToString();
        }

        protected void userlogout(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            alogout.Visible = false;
            alogin.Visible = true;
            Response.Write("Succesfully logout");
            
        }

        protected void btnitemsearch_Click(object sender, EventArgs e)
        {
            String query = "select * from tblItems where Name LIKE '%" + txtsearch.Text + "%'";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["kartconnection"].ConnectionString);
            conn.Open();
            SqlCommand com = new SqlCommand(query, conn);
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            da.Fill(ds);

            dlsearchitems.DataSource = ds.Tables[0];
            dlsearchitems.DataBind();
            conn.Close();
            DataList dl = new DataList();
            dl = (DataList)ContentPlaceHolder1.FindControl("dlindexitems");
            if(dl!=null)
            dl.Visible = false;
           
           
        }

    }
}