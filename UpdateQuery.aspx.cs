using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class UpdateQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["txtFName"];
        string password = Request.QueryString["txtPassword"];
        int id = int.Parse(Session["id"].ToString());

        if (Session["id"] != null)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\noam8\OneDrive\Desktop\גרסה מעודכנת\App_Data\Database.mdf;Integrated Security=True;User Instance=True");
            con.Open();
            string s = "update users set name='" + name + "',password='" + password + "' where id= " + id + "";
            SqlDataAdapter da = new SqlDataAdapter(s, con);
            DataSet ds = new DataSet();
            da.Fill(ds);

            con.Close();

            Response.Redirect("homePage.aspx");


        }
    }
}