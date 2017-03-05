using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Resource_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string s = "select Tp, Place from search";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        int c = 0,i=0;
        String[] n = new String[20];
        Panel1.Controls.Add(new LiteralControl("<table><tr>"));
        while (sdr.Read())
        {
            string url = sdr.GetString(0);
            string plc = sdr.GetString(1);
            n[i] =plc;
            url = "../../Resource/" + url;
            if (c==3)
            {
                break;

            }
            c++;

                Panel1.Controls.Add(new LiteralControl("<td>"));
                Panel1.Controls.Add(new LiteralControl("<table border=1><tr><td>"));
                Panel1.Controls.Add(new LiteralControl("<img src='" + url + "' height=220px width=220px/>"));
                Panel1.Controls.Add(new LiteralControl("</tr></td>"));
                Panel1.Controls.Add(new LiteralControl("<tr><td>"));
                Panel1.Controls.Add(new LiteralControl("<a href=Discription.aspx>" + plc + "</a>"));
                Panel1.Controls.Add(new LiteralControl("</td></tr></table>"));
                Panel1.Controls.Add(new LiteralControl("</td>"));
        }
        Panel1.Controls.Add(new LiteralControl("</tr></table>"));
       
       
       
    }
}