﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connStr"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            conn.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM [account] WHERE username=@user AND password=@pass", conn);

            cmd.Parameters.AddWithValue("user", txtUser.Text);
            cmd.Parameters.AddWithValue("pass", txtPass.Text);

            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.HasRows)  //determine that has record or not
            {
                while (dr.Read())
                {
                    Session["username"] = dr["username"].ToString();
                    Session["Id"] = dr["Id"].ToString();
                    Response.Redirect("/function/monitor.aspx");
                }
            }
            else
            {
                Response.Write("<script>alert('EMAIL AND PASSWORD IS NOT FOUND!'); </script>");
            }

            conn.Close();
        }
        catch (SqlException ex)
        {
            Response.Write(ex.ToString());
        }

    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("sign.aspx");
    }
}