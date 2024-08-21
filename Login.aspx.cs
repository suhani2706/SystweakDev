using System;
using System.IO;
using System.Web;
using System.Web.UI;
using Npgsql;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Net.NetworkInformation;
using NuGet.Common;
using System.Web.Services;

namespace Systweak
{
    public partial class Login : System.Web.UI.Page
    {
        private static string randomCode;
        private static string to;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Hide the OTP input on the initial load
                txtVerifyContainer.Visible = false;
                
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {   
               
            string email = txtEmail.Text;
            string password = txtPassword.Text;

            // Validate credentials first (assume this function checks email and password)
            if (ValidateCredentials(email, password))
            {
                // Send OTP
                SendOTP(email);
                lblMessage.Text = "OTP has been sent to your email.";
                lblMessage.ForeColor = System.Drawing.Color.Green;
                lblMessage.Visible = true;

                txtVerifyContainer.Visible = true;
            }
            else
            {
                lblMessage.Text = "Invalid email or password";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }

        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {


            if (randomCode == txtVerify.Text)
            {
                // Redirect to password reset page or success page
                Response.Redirect("Welcome.aspx");
            }
            else
            {
                lblMessage.Text = "Wrong Code";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }
        }
        [WebMethod]private bool ValidateCredentials(string email, string password)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;
            bool isValid = false;

            using (NpgsqlConnection conn = new NpgsqlConnection(connectionString))
            {
                conn.Open();
                string query = "SELECT COUNT(*) FROM users WHERE email = @Email AND password = @Password";

                using (NpgsqlCommand cmd = new NpgsqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@Password", HashPassword(password));
                    int count = Convert.ToInt32(cmd.ExecuteScalar());

                    isValid = count > 0;
                }
            }
            return isValid;
        }
        private void SendOTP(string email)
        {
            string from, pass, messageBody;
            Random rand = new Random();
            randomCode = (rand.Next(999999)).ToString();
            MailMessage message = new MailMessage();
            to = email;
            from = "itsmehi2705@gmail.com";
            pass = "ejanhgciwnzizzhy";
            messageBody = "Your OTP for login is " + randomCode;
            message.To.Add(to);
            message.From = new MailAddress(from);
            message.Body = messageBody;
            message.Subject = "Login OTP";
            SmtpClient smtp = new SmtpClient("smtp.gmail.com")
            {
                EnableSsl = true,
                Port = 587,
                DeliveryMethod = SmtpDeliveryMethod.Network,
                UseDefaultCredentials = false,
                Credentials = new NetworkCredential(from, pass)
            };

            try
            {
                smtp.Send(message);
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error sending OTP email: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
                lblMessage.Visible = true;
            }
        }
        private string HashPassword(string password)
        {

            return password; // For demonstration purposes only
        }

    }
}