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
            txtPastureID.Text = "";
            txtPastureLocation.Text = "";
            ddlFenceType.Text = "";
        }
    }
}