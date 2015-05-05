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
                        ddlAnimalSpecies.Items.Add(item);
                    }
                }
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            
            ddlAnimalSpecies.Text = "";
            ddlPastureLocation.Text = "";
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
        }
    }
}