using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class function_monitor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Unnamed_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/logout.aspx");
    }
    protected void btmRq_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("request.aspx");
    }
    protected void btnNorti_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("norti.aspx");
    }
    protected void btnForm_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("form.aspx");
    }
}