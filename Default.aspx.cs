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
    public partial class Default1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string InsertUser = "insert into UserInfo(userFullName,userEmail,userPhone,userDept,userSec) values(@0,@1,@2,@3,@4)";
                SqlCommand comm = new SqlCommand(InsertUser, conn);
                comm.Parameters.AddWithValue("@0", fullname.Text);
                comm.Parameters.AddWithValue("@1", email.Text);
                comm.Parameters.AddWithValue("@2", phone.Text);
                comm.Parameters.AddWithValue("@3", dept.Text);
                comm.Parameters.AddWithValue("@4", sect.Text);
                comm.ExecuteNonQuery();
                fullname.Text = string.Empty;
                email.Text = string.Empty;
                phone.Text = string.Empty;
                dept.Text = string.Empty;
                sect.Text = string.Empty;
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your response has been recorded successfully!')", true);
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}