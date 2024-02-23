using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    public string myTime = DateTime.Now.ToString();
    public string name = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            name = Session["name"].ToString();
        }
        else
        {
            name = " -אינך מחובר- ";
        }
    }
}
