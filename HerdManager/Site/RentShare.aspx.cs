﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.Site
{
    public partial class RentShare : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFName.Text = "";
            txtlname.Text = "";
            txtPhoneNum.Text = "";

        }
    }
}