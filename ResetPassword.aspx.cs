using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Npgsql;
using System.Configuration;
using NuGet.Common;
namespace Systweak
{
    public partial class ResetPassword : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email = Request.QueryString["email"];
                if (string.IsNullOrEmpty(email))
                {
                    Response.Redirect("ForgotPassword.aspx");
                }
                else
                {
                    email = HttpUtility.UrlDecode(email);
                    // You can display the email or use it as needed
                    // For example: lblEmail.Text = email;
                }
            }
        }
        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string email = HttpUtility.UrlDecode(Request.QueryString["email"]);
            string newPassword = txtNewPassword.Text;

            if (!string.IsNullOrEmpty(newPassword))
            {
                UpdatePassword(email, newPassword);
                Response.Write("<script>alert('Password reset successful.');</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                lblMessage.Text = "Please enter a new password.";
            }
        }

        private void UpdatePassword(string email, string newPassword)
        {
            string connString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;
            using (NpgsqlConnection conn = new NpgsqlConnection(connString))
            {
                conn.Open();
                string query = "UPDATE users SET password = @Password WHERE email = @Email";
                using (NpgsqlCommand cmd = new NpgsqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Password", newPassword); // Ideally, hash the password before saving
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.ExecuteNonQuery();
                }
            }
        }



    }
}