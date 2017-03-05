using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class Car : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button7_Click(object sender, EventArgs e)
    {
        string d = Convert.ToString(DropDownList2.SelectedItem);
        string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        string s = "select Tp, Place from search where Distic='" + d + "'";
        SqlCommand cmd = new SqlCommand(s, con);
        SqlDataReader sdr = cmd.ExecuteReader();
        Panel1.Controls.Add(new LiteralControl("<Table class=Table><tr>"));
        while (sdr.Read())
        {
            string url = sdr.GetString(0);
            string plc = sdr.GetString(1);
            Application["plc"] = plc;
            url = "../../Resource/" + url;
            Panel1.Controls.Add(new LiteralControl("<td >"));
            Panel1.Controls.Add(new LiteralControl("<img src='" + url + "' height=200px width=200px/>"));
            Panel1.Controls.Add(new LiteralControl("<a href=Discription.aspx>" + plc + "</a>"));
            Panel1.Controls.Add(new LiteralControl("</td>"));
        }
        Panel1.Controls.Add(new LiteralControl("</tr></Table>"));
        
       
    }
}