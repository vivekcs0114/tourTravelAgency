using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Passrec : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        try
        {
            long mob;
            mob = Convert.ToInt64(TextBox1.Text);
            string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            string s = "select Psh from userreg where Mob=" + mob + "";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                string ss = sdr.GetString(0);
                Label1.Visible = true;
                Label1.Text = "Your Password Hint Is :" +ss;
            }
        }
        catch
        {

        }
       
        
    }
}