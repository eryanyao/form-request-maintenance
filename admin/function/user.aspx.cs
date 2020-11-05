using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class admin_function_user : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindGrid();
        }
    }

    private void BindGrid()
    {
        string constr = "Data Source = (LocalDB)\\MSSQLLocalDB;"
            + "Integrated Security = true;"
            + "AttachDbFileName = |DataDirectory|\\Database.mdf";

        using (SqlConnection conn = new SqlConnection(constr))
        {
            //using (SqlCommand cmd = new SqlCommand ("SELECT Id, ShortName, LongName FROM [Car]"))
            using (SqlCommand cmd = new SqlCommand("SELECT Id,username FROM [account]"))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = conn;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GVCar.DataSource = dt;
                        GVCar.DataBind();
                    }
                }
            }
        }
    }
}