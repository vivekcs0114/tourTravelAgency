using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Userreg : System.Web.UI.Page
{
    
     
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible =false;
        Random r = new Random();
         int i = r.Next(34567,987654);
        TextBox8.Text = Convert.ToString(i);
        try
        {
            string mob = Session["mob"].ToString();
            //Response.Write(mob);
            Label1.Visible = true;
            Label1.Text=mob;
        }
        catch
        {
        }
       
        

    }

    
    protected void Button7_Click(object sender, EventArgs e)
    {
        string n, em, ad, ph, cp ;
        long m ;
        n = TextBox1.Text;
        m =Convert.ToInt64(TextBox2.Text);
        string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string s = "select Mob from userreg where Mob="+m+"";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        while(sdr.Read())
        {
           string mob = sdr.GetString(0);
           Session["mob"] = "Mob NO. is alredy register";
            Response.Redirect("Userreg.aspx");
        }
        Application["Mob"] = m;
        em = TextBox3.Text;
        ad = TextBox4.Text;
        cp = TextBox10.Text;
        Application["cp"] = cp;
        ph=TextBox11.Text;
        string dp = "dp.jpg";
            SqlConnection conn = new SqlConnection(cs);
            conn.Open();
            string ss = "insert into userreg values('" + n + "'," + m + ",'" + em + "','" + ad + "'," + cp + ",'" + ph + "','"+dp+"')";
            SqlCommand cmdd = new SqlCommand(ss, conn);
            int no = cmdd.ExecuteNonQuery();
            if (no == 1)
                Response.Redirect("Regconf.aspx");
            else
                TextBox7.Text = "Please Enter Correct Code";
    }

   
}