using Npgsql;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Systweak.Models;

namespace Systweak
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text;
            string Password = txtPassword.Text;
            string ConfirmPassword = txtConfirmPassword.Text;

            lblPasswordError.Text = "";
            lblConfirmPasswordError.Text = "";
            lblConfirmPasswordError.Visible= false;
            lblPasswordError.Visible= false;

            bool isValid = true;

            if (string.IsNullOrWhiteSpace(Password))
            {
                lblPasswordError.Text = "Password is required.";
                lblPasswordError.Visible = true;
                isValid = false;
                
            }

            if (string.IsNullOrWhiteSpace(ConfirmPassword))
            {
                lblConfirmPasswordError.Text = "Confirm Password is required.";
                lblConfirmPasswordError.Visible = true;
                isValid = false;    
            }

            if (Password != ConfirmPassword)
            {
                lblConfirmPasswordError.Text = "Passwords do not match.";
                lblConfirmPasswordError.Visible = true;
                isValid = false;
            }

            if (Password.Length < 8)
            {
                lblPasswordError.Text = "Password must be at least 8 characters long.";
                lblPasswordError.Visible = true;
                isValid = false;
            }

            if (!HasNumber(Password))
            {
                lblPasswordError.Text = "Password must contain at least one number.";
                lblPasswordError.Visible = true;
                isValid = false;
            }

            if (!HasSpecialCharacter(Password))
            {
                lblPasswordError.Text = "Password must contain at least one special character.";
                lblPasswordError.Visible = true;
                isValid = false;
            }

            if (!IsValid)
            {
                return;
            }
            // Hash the password before saving (you should implement proper password hashing)
            string hashedPassword = HashPassword(Password);

                // Connect to PostgreSQL database
                string connectionString = ConfigurationManager.ConnectionStrings["MyDbConnection"].ConnectionString;

                using (NpgsqlConnection connection = new NpgsqlConnection(connectionString))
                {
                    connection.Open();

                    // Check if email already exists
                    string query = "SELECT COUNT(*) FROM users WHERE email = @Email";
                    using (NpgsqlCommand cmd = new NpgsqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        int count = Convert.ToInt32(cmd.ExecuteScalar());
                        if (count > 0)
                        {
                            Response.Write("<script>alert('Email already exists');</script>");
                            Response.Redirect("Login.aspx");
                        }
                    }

                    // Insert new user into the database
                    query = "INSERT INTO users (email, password) VALUES (@Email, @Password)";
                    using (NpgsqlCommand cmd = new NpgsqlCommand(query, connection))
                    {
                        cmd.Parameters.AddWithValue("@Email", email);
                        cmd.Parameters.AddWithValue("@Password", hashedPassword);
                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            Response.Redirect("Welcome.aspx"); // Redirect to login page after successful sign up
                        }
                        else
                        {
                            Response.Write("<script>alert('Sign up failed');</script>");
                        }
                    }
                }
            // Placeholder for password hashing method (replace with your actual implementation)
            string HashPassword(string password)
            {

                return Password;
            }
            bool HasNumber(string input)
            {
                foreach (char c in input)
                {
                    if (char.IsDigit(c))
                    {
                        return true;
                    }
                }
                return false;
            }

            // Check if the password contains a special character
            bool HasSpecialCharacter(string input)
            {
                string specialChars = @"!@#$%^&*(),.?""':{}|<>";
                foreach (char c in input)
                {
                    if (specialChars.Contains(c))
                    {
                        return true;
                    }
                }
                return false;
            }

        }

        
    }
}