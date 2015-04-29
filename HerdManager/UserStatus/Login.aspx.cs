using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.UserStatus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPassword.Text = "";
            txtUserName.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseStuff.DataBaseHelper.Connect();
            if (DatabaseStuff.DataBaseHelper.LogIn(txtUserName.Text, txtPassword.Text))
            {
                Response.Redirect("/Site/Main.aspx");
            }
            else
            {
                lblLogInFailed.Text = "Login Failed!";
            }
        }

    }
}