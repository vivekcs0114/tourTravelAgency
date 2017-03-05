using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Train : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button7_Click(object sender, EventArgs e)
    {


        if (DropDownList1.SelectedItem.Value != "-1")
        {
            string d = Convert.ToString(DropDownList1.SelectedItem);
            string cs = ConfigurationManager.ConnectionStrings["Mycon"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            string s = "select Agency from search where Distic='" + d + "'";
            SqlCommand cmd = new SqlCommand(s, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            Panel1.Controls.Add(new LiteralControl("<Table class=Table><tr>"));
            while (sdr.Read())
            {
                string url = sdr.GetString(0);
                url = "../../Resource/" + url;
             
                Panel1.Controls.Add(new LiteralControl("<td>"));
                Panel1.Controls.Add(new LiteralControl("<img src='"+url+"' height=200px width=300px/>"));
                Panel1.Controls.Add(new LiteralControl("</td>"));
            }
            Panel1.Controls.Add(new LiteralControl("</tr></Table>"));
           
        }
    }
}


        
              

  