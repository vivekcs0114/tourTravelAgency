﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Regconf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       Label1.Text = Application["Mob"].ToString();
        Label2.Text = Application["Cp"].ToString();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}