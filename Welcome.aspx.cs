using System;
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

            Response.Redirect("Welcome.aspx"); 
        }
        protected void btnResume_Click(object sender, EventArgs e)
        {

            Response.Redirect("Resume.aspx"); 
        }
        protected void btnAboutMe_Click(object sender, EventArgs e)
        {

            Response.Redirect("AboutMe.aspx");
        }
        protected void btnMyWork_Click(object sender, EventArgs e)
        {

            Response.Redirect("MyWork.aspx"); // Example: Redirect to an About Me page
        }
        protected void btnContact_Click(object sender, EventArgs e)
        {

            Response.Redirect("Contact.aspx"); 
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

            Response.Redirect("Login.aspx"); 
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {

            Response.Redirect("SignUp.aspx"); 
        }

    }
}