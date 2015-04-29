using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.Site
{
    public partial class DatabaseTesting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFirstTestConn_Click(object sender, EventArgs e)
        {
            if (DatabaseStuff.DataBaseHelper.Connect())
            {
                lblTest.Text = "Connected Successfully!";
            }
            else
            {
                lblTest.Text = "Connection Failed!";
            }
            DatabaseStuff.DataBaseHelper.Disconnect();
        }

        protected void btnTestReg_Click(object sender, EventArgs e)
        {
            DatabaseStuff.DataBaseHelper.Connect();
            if (DatabaseStuff.DataBaseHelper.RegisterUser("jwalker", "walkeris1", "Jonathan", "Walker"))
            {
                lblTstRegister.Text = "Registration Successfull.";
            }
            else
            {
                lblTstRegister.Text = "Registration Failed.";
            }
        }
    }
}