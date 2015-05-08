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
            gdvAnimals.DataSource = DatabaseStuff.DataBaseHelper.GetAllAnimals(Session["UserName"].ToString());
            gdvAnimals.DataBind();
        }

        protected void gdvAnimals_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Session["EditMode"] = true;
            Session["EditRow"] = gdvAnimals.Rows[e.NewEditIndex];
            Response.Redirect("/Site/NewAnimal.aspx");
        }

        protected void gdvAnimals_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string str = gdvAnimals.Rows[e.RowIndex].Cells[1].Text;
            gdvAnimals.Rows[e.RowIndex].Dispose();
            bool retv = DatabaseStuff.DataBaseHelper.RemoveAnimal(int.Parse(str));
            if (!retv)
            {

            }
        }
    }
}