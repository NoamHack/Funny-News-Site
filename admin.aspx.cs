using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class admin : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\noam8\OneDrive\Desktop\גרסה מעודכנת\App_Data\Database.mdf;Integrated Security=True;User Instance=True ");
    protected void Page_Load(object sender, EventArgs e)
    {
    }
 protected void Button1_Click(object sender, EventArgs e)
    {   
  
        con.Open();
        string s = "select * from users";
        SqlDataAdapter da = new SqlDataAdapter(s, con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        //to show data
        GridView1.DataBind();

        con.Close();
 }
 protected void Button2_Click(object sender, EventArgs e)
 {
     con.Open();
     string s = "insert into users(name,password,birth,adress,email,isAdmin) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text +"','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
     SqlDataAdapter da = new SqlDataAdapter(s, con);
     DataSet ds = new DataSet();
     da.Fill(ds);
     GridView1.DataBind();

     con.Close();
 }
 protected void Button3_Click(object sender, EventArgs e)
 {
     con.Open();
     string s = "update users set name='" + TextBox1.Text + "',password='" + TextBox2.Text + "',birth='" + TextBox3.Text + "' ,adress= '" + TextBox4.Text + "',email='" + TextBox5.Text + "',isAdmin='" + TextBox6.Text + "' where id= " + TextBox7.Text + "";
     SqlDataAdapter da = new SqlDataAdapter(s, con);
     DataSet ds = new DataSet();
     da.Fill(ds);
     GridView1.DataBind();

     con.Close();
 }
 protected void Button4_Click(object sender, EventArgs e)
 {
     con.Open();
     string s = "delete from users where id=" + TextBox7.Text + "";
     SqlDataAdapter da = new SqlDataAdapter(s, con);
     DataSet ds = new DataSet();
     da.Fill(ds);
     GridView1.DataBind();

     con.Close();
 }
 protected void TextBox2_TextChanged(object sender, EventArgs e)
 {

 }
}