﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Systweak
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnHome_Click(object sender, EventArgs e)
        {

            Response.Redirect("Welcome.aspx"); // Example: Redirect to an About Me page
        }
        protected void btnResume_Click(object sender, EventArgs e)
        {

            Response.Redirect("Resume.aspx"); // Example: Redirect to an About Me page
        }
        protected void btnAboutMe_Click(object sender, EventArgs e)
        {

            Response.Redirect("AboutMe.aspx"); // Example: Redirect to an About Me page
        }
        protected void btnGitHub_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://github.com/suhani2706");
        }

        protected void btnInstagram_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://instagram.com/yourusername");
        }

        protected void btnLinkedIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://linkedin.com/in/yourusername");
        }

        protected void btnEmail_Click(object sender, EventArgs e)
        {
            Response.Redirect("mailto:your-email@example.com");
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {

            Response.Redirect("Login.aspx"); // Example: Redirect to an About Me page
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            Response.Redirect("SignUp.aspx"); // Example: Redirect to an About Me page
        }

    }
}