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

public partial class function_form : System.Web.UI.Page
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
                //dir location
                var directoryInfo = new DirectoryInfo("C:\\Users\\yanyao\\Desktop\\IT\\img\\form\\");
                if (directoryInfo.Exists)
                {
                    directoryInfo.CreateSubdirectory(Session["Id"].ToString());
                }
                FileUpload6.SaveAs("C:\\Users\\yanyao\\Desktop\\IT\\img\\form\\" + Session["Id"].ToString() + "\\" + FileUpload6.FileName);
                conn.Open();

                string add = "INSERT INTO form (name,email,phone,role,location,problem,image,refID,status,date)values(@name,@email,@phone,@role,@location,@pro,@img,@ref,@status,@date)";
                SqlCommand cmd = new SqlCommand(add, conn);


                cmd.Parameters.AddWithValue("name", txtName.Text.Trim());
                cmd.Parameters.AddWithValue("email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("phone", txtPhone.Text.Trim());
                cmd.Parameters.AddWithValue("role", ddlRole.Text);
                cmd.Parameters.AddWithValue("location", ddlLocation.Text);
                cmd.Parameters.AddWithValue("pro", txtProblem.Text);
                cmd.Parameters.AddWithValue("img", "\\img\\form\\" + Session["Id"].ToString() + "\\" + FileUpload6.FileName);
                cmd.Parameters.AddWithValue("ref", Convert.ToInt32(Session["Id"].ToString()));
                cmd.Parameters.AddWithValue("status", "Pending");
                cmd.Parameters.AddWithValue("date", DateTime.Now.ToString());

                cmd.ExecuteNonQuery();

                Response.Write("<script>alert('Submit Successfully!');location.href='monitor.aspx';</script>");
            }
        }
        catch(Exception ex)
        {
            lblError.Text = "ERROR: " + ex.ToString();
            lblError.ForeColor = System.Drawing.Color.Red;
        }
        
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("monitor.aspx");
    }
}