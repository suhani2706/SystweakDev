using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using Npgsql;
using NuGet.Common;

namespace Systweak
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnResetPassword_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string connString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;

            using (NpgsqlConnection conn = new NpgsqlConnection(connString))
            {
                conn.Open();

                string query = "SELECT * FROM users WHERE email = @Email";
                using (NpgsqlCommand cmd = new NpgsqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    int count = Convert.ToInt32(cmd.ExecuteScalar());
                    if (count > 0)
                    {
                        Response.Redirect($"ResetPassword.aspx?email={HttpUtility.UrlEncode(email)}");
                    }
                    else
                    {
                        lblMessage.Text = "Email not Found";
                    }
                }

            }
        }
    }
}