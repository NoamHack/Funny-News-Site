using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class insertQuery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //שמירת הנתונים שעברו מהדף הקודם
        string name = Request.QueryString["name"];
        string password = Request.QueryString["password"];
        string birth = Request.QueryString["birth"];
        string adress = Request.QueryString["adress"];
        string email = Request.QueryString["email"];
        int isAdmin;
        {
            if (Request.QueryString["admin"] == "true")
                isAdmin = 1;
            else
                isAdmin = 0;
        }

        //שאילתהת הכנסת הנתונים לבסיס הנתונים
        SqlConnection con = new SqlConnection();
        con.ConnectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\noam8\OneDrive\Desktop\גרסה מעודכנת\App_Data\Database.mdf;Integrated Security=True;User Instance=True ";
        con.Open();
        string s = "insert into users(name,password,birth,adress,email,isAdmin) values('" + name + "','" + password + "','" + birth + "','" + adress + "','" + email + "','" + isAdmin + "')";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        //שאילתה ששולפת את המזהה של המשתמש ושומרת אותו בסשן
        SqlCommand cmd2 = new SqlCommand();
        cmd2.Connection = con;
        cmd2.CommandType = CommandType.Text;
        cmd2.CommandText = "SELECT id from users WHERE name='" + name + "'AND password='" + password + "'";
        object obj = cmd2.ExecuteScalar();
        con.Close();
        if (obj != null)
        {
            Session["id"] = obj;
            Session["name"] = name;
            Response.Redirect("HomePage.aspx");
        }

        //העברה לעמוד הרצוי
        Response.Redirect("login.aspx");

    }
}