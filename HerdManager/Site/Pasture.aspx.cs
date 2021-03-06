﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.UserStatus
{
    public partial class Pasture : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtPastureDescription.Text = "";
            txtPastureLocation.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DatabaseStuff.DataBaseHelper.Connect();
            DatabaseStuff.DataBaseHelper.AddPasture(txtPastureLocation.Text, txtPastureDescription.Text, ddlFenceType.SelectedValue);
        }
    }
}