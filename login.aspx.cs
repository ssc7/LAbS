using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string checkUser = "select count(*) from Users where userName= '" + username.Text + "'";
                SqlCommand comm = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString());
                conn.Close();
                if (temp == 1)
                {
                    conn.Open();
                    string checkPass = "select userPassword from Users where userName= '" + username.Text + "'";
                    SqlCommand comm1 = new SqlCommand(checkPass, conn);
                    string password = comm1.ExecuteScalar().ToString().Replace(" ", "");
                    if (password == pass.Text)
                    {
                        Session["user"] = username.Text;
                        Response.Write("Password is correct");
                        Response.Redirect("admin.aspx");

                    }
                    else
                    {
                        Response.Write("Password is not correct");

                    }
                }
                else
                {
                    Response.Write("Username is not correct");

                }

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}