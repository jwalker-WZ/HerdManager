using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.Site
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DatabaseStuff.DataBaseHelper.Connect();
            gdvAnimals.DataSource = DatabaseStuff.DataBaseHelper.GetAllAnimals();
            gdvAnimals.DataBind();
        }

        protected void gdvAnimals_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }

        protected void gdvAnimals_RowEditing(object sender, GridViewEditEventArgs e)
        {

        }
    }
}