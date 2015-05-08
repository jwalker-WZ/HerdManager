using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HerdManager.UserStatus
{
    public partial class NewAnimal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<string> SpeciesOptions = DatabaseStuff.DataBaseHelper.SpeciesOptions();
                if (SpeciesOptions != null)
                {
                    foreach (string item in SpeciesOptions)
                    {
                        ListItem li = new ListItem(item, item);
                        ddlAnimalSpecies.Items.Add(li);
                    }
                }
                if ((bool)Session["EditMode"] == true)
                {
                    GridViewRow gr = (GridViewRow)Session["EditRow"];
                    txtColor.Text = gr.Cells[4].ToString();
                    txtNotes.Text = gr.Cells[10].ToString();
                    txtSpecialInformation.Text = gr.Cells[5].ToString();
                    txtTagNumber.Text = gr.Cells[3].ToString();
                    txtTemperment.Text = gr.Cells[9].ToString();
                    ddlAnimalSpecies.SelectedValue = gr.Cells[11].ToString();
                    ddlGender.SelectedValue = gr.Cells[6].ToString();
                    string s = gr.Cells[7].ToString();
                    calBirthDate.SelectedDate = (DateTime.Parse(s)).Date;
                    string date = gr.Cells[8].ToString();
                    if (date != "1/1/0001 12:00:00 AM")
                    {
                        calSellDeathDate.SelectedDate = DateTime.Parse(date).Date;
                    }
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            
            ddlAnimalSpecies.Text = "";
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            bool returnValue = DatabaseStuff.DataBaseHelper.AddAnimal(ddlAnimalSpecies.SelectedValue, ddlGender.SelectedValue, Session["UserName"].ToString(),
                calBirthDate.SelectedDate, calSellDeathDate.SelectedDate, txtTemperment.Text, txtNotes.Text, txtTagNumber.Text,
                txtColor.Text, txtSpecialInformation.Text);
            if (!returnValue)
            {
                lblFailed.Text = "Addition Failed!";
            }
            else
            {
                Response.Redirect("/Site/Main.aspx");
            }

        }
    }
}