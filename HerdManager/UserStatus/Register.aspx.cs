using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.UserStatus
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseStuff.DataBaseHelper.Connect();
            if (DatabaseStuff.DataBaseHelper.RegisterUser(txtUserName.Text, txtPassword.Text, txtFirstName.Text, txtLastName.Text))
            {
                Response.Redirect("/Site/Main.aspx");
            }
        }
    }
}