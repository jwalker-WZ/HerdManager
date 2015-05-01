<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="NewAnimal.aspx.cs" Inherits="HerdManager.UserStatus.NewAnimal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">
        <div class="middle">
            <div class="centerdiv">
                <table id="NewAnimalCenter">
                    <tr>
                        <td>
                            <asp:Label ID="lblAnimalInfo" runat="server" Text="Animal Information"></asp:Label>
                        </td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblTag" runat="server" Text="Tag Information"></asp:Label>
                        </td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblVetInfo" runat="server" Text="Vet Information"></asp:Label>
                        </td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblRentShareInfo" runat="server" Text="Rent or Share Information"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAnimalSpecies" runat="server" Text="Species"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlAnimalSpecies" runat="server"></asp:DropDownList>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblTagID" runat="server" Text="Tag ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTagID" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calVetDate" runat="server"></asp:Calendar>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlGender" runat="server"></asp:DropDownList>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblTagNumber" runat="server" Text="Tag Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTagNumber" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblWorkDone" runat="server" Text="Work Done"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtWorkDone" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblOffSpringDescription" runat="server" Text="Off Spring Description"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtOffSpringDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblTagColor" runat="server" Text="Tag Color"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                        </td>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmitVetWork" runat="server" Text="Submit Vetwork" />
                        </td>
                        <td>
                            <asp:Button ID="btnClearVetWork" runat="server" Text="Clear Vetwork" />
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblPhoneNumber" runat="server" Text="Phone Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" TextMode="SingleLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Label ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calBirthDate" runat="server"></asp:Calendar>
                        </td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblSpecialInformation" runat="server" Text="Special Information"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSpecialInformation" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblBeginDate" runat="server" Text="Begin Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calBeginDate" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPastureLocation" runat="server" Text="Pasture"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlPastureLocation" runat="server"></asp:DropDownList>
                        </td>
                        <td></td>
                        <td>
                            <asp:Button ID="btnSubmitTag" runat="server" Text="Submit Tag" />
                        </td>
                        <td>
                            <asp:Button ID="btnClearTag" runat="server" Text="Clear Tag" />
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calEndDate" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSellDeathDate" runat="server" Text="Sell/Death Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calSellDeathDate" runat="server"></asp:Calendar>
                        </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                            <asp:Label ID="lblType" runat="server" Text="Type"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlType" runat="server"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTemperment" runat="server" Text="Temperment"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTemperment" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblNotes" runat="server" Text="Notes"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblParentID" runat="server" Text="Parent ID"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtParentID" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                        </td>
                        <td>
                            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </div>
</asp:Content>
