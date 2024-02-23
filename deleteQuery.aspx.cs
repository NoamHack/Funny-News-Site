using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class deleteQuery : System.Web.UI.Page
{
    int id=-1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["id"]!=null)
            id = int.Parse((Session["id"].ToString()));
        SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\noam8\OneDrive\Desktop\גרסה מעודכנת\App_Data\Database.mdf;Integrated Security=True;User Instance=True ");
        con.Open();
        string s = "delete from users where id=" + id + "";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);

        con.Close();
        Session.Clear();
        Session.Abandon();
        Response.Redirect("Register.aspx");
    }
}