using System;
using System.Web.UI.WebControls;

public partial class function_request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDetail_Command(object sender, CommandEventArgs e)
    {
        if(e.CommandName == "btnClick")
        {
            Session["item"] = e.CommandArgument;
            Response.Redirect("detail.aspx");
        }
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("monitor.aspx");
    }
}