using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Tour.aspx");
    }
    
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Agency.aspx");
    }
   
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
