using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Redirect("Userreg.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        
        Label1.Visible = true;
        long id, pass;
        try
        {
            id = Convert.ToInt64(TextBox1.Text);
            pass = Convert.ToInt64(TextBox2.Text);
            Session["uid"] = id;
            Session["upass"] = pass;
            string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string s = "select Name from userreg where Mob=" + id + "and Cnp=" + pass + " ";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
               string name= sdr.GetString(0);
               Application["name"] = name;
                Response.Redirect("Details.aspx");
            }
            else
                Label1.Text = "Record Not Found";
        }
        catch
        {
            Label1.Visible = false;
            Panel1.Controls.Add(new LiteralControl("Enter correct user name and Password"));
            
        }
        
    }

    
}