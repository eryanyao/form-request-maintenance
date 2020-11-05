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

public partial class admin_function_location : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();

                string add = "INSERT INTO Location (name)values(@name)";
                SqlCommand cmd = new SqlCommand(add, conn);

                cmd.Parameters.AddWithValue("name", txtname.Text);

                cmd.ExecuteNonQuery();

            }

        }
        catch (Exception ex)
        {
            lblError.Text = "ERROR: " + ex.ToString();
            lblError.ForeColor = System.Drawing.Color.Red;
        }
        Response.Redirect("location.aspx");
    }
}