using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class selectQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = Request.QueryString["name"];
        string password = Request.QueryString["password"];

        SqlConnection conn = new SqlConnection();
        conn.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\noam8\OneDrive\Desktop\גרסה מעודכנת\App_Data\Database.mdf;Integrated Security=True;User Instance=True";
        conn.Open();

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = conn;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "SELECT id from users WHERE name='" + name + "'AND password='" + password + "'";
        object obj = cmd.ExecuteScalar();
        conn.Close();

        if (obj != null)
        {
            Session["id"] = obj;
            Session["name"] = name;
            Response.Redirect("HomePage.aspx");
        }

        Response.Redirect("register.aspx");  

        
    }
}