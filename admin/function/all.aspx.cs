using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class admin_function_request_all : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnPen_Click(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 1;
        Session["pending"] = "Pending";
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        conn.Open();

        string updatecmd = "UPDATE form SET status=@status WHERE Id=@Id";

        SqlCommand com = new SqlCommand(updatecmd, conn);
        {

            com.ExecuteNonQuery();//Update query use this command
        }

    }

    protected void btnPro_Click(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 2;
        Session["pending"] = "In Process";
    }

    protected void btnSuc_Click(object sender, EventArgs e)
    {
        mv1.ActiveViewIndex = 3;
        Session["pending"] = "Completed";
    }

    protected void btnReceive_Command(object sender, CommandEventArgs e)
    {
        if(e.CommandName == "receive")
        {
            string id = e.CommandArgument.ToString();
            conn.Open();

            string updatecmd = "UPDATE form SET status=@status WHERE Id=@Id";

            SqlCommand com = new SqlCommand(updatecmd, conn);
            {
                com.Parameters.AddWithValue("status", "In Process");
                com.Parameters.AddWithValue("Id",id);

                com.ExecuteNonQuery();//Update query use this command
            }

            Response.Write("<script>alert('Record Update Successfully!');</script>");
            mv1.ActiveViewIndex = 0;

            com.Dispose();

            conn.Close();
        }
    }

    protected void btnCompleted_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "completed")
        {
            string id = e.CommandArgument.ToString();
            conn.Open();

            string updatecmd = "UPDATE form SET status=@status WHERE Id=@Id";

            SqlCommand com = new SqlCommand(updatecmd, conn);
            {
                com.Parameters.AddWithValue("status", "Completed");
                com.Parameters.AddWithValue("Id", id);

                com.ExecuteNonQuery();//Update query use this command
            }

            Response.Write("<script>alert('Record Update Successfully!');</script>");
            mv1.ActiveViewIndex = 0;

            com.Dispose();

            conn.Close();
        }
    }

    protected void viewDetail_Command(object sender, CommandEventArgs e)
    {
        if (e.CommandName == "btnClick")
        {
            Session["item"] = e.CommandArgument;
            mv1.ActiveViewIndex = 4;
        }
    }
}