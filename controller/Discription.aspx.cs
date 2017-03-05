using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Discription : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ss ="Allahabad";
        string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string s = "select Discription from search where Distic='"+ss+"'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        Panel1.Controls.Add(new LiteralControl("<Table><tr>"));
        while (sdr.Read())
        {
            string url = sdr.GetString(0);
            Panel1.Controls.Add(new LiteralControl("<td>"));
            Panel1.Controls.Add(new LiteralControl(url));
            Panel1.Controls.Add(new LiteralControl("</td>"));
            
        }
        Panel1.Controls.Add(new LiteralControl("</tr></Table>"));
       
    }
    
}