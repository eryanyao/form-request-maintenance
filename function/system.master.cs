﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class function_system : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();       
        Response.Redirect("~/logout.aspx");
    }
}
