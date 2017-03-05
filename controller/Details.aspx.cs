using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string uid = Session["uid"].ToString();
            string upass = Session["upass"].ToString();
            string name = Application["name"].ToString();
            string ss = "Welcome " + name;
            Label1.Text = ss;
            string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string s = "select Mob, Email, Address, Dp from userreg where Mob=" + uid + "and Cnp=" + upass + " ";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Label2.Text = sdr.GetString(0);
                Label3.Text = sdr.GetString(1);
                Label4.Text = sdr.GetString(2);
                Image2.ImageUrl= "../../Upload/" + sdr.GetString(3);
            }
            
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
        

    }



    protected void Button8_Click(object sender, EventArgs e)
    {
       
        string uf = FileUpload1.FileName.ToString();
        
        if (FileUpload1.HasFile)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Upload/" + FileUpload1.FileName));
        }
        try
        {
            Image2.ImageUrl = "~/Upload/" + FileUpload1.FileName;
        }
        catch
        {
        }
    }
}