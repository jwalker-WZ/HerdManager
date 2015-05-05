<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="NewAnimal.aspx.cs" Inherits="HerdManager.UserStatus.NewAnimal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">
        <div class="middle">
            <div class="NewAnimalCenter">
                <table id="NewAnimalTable">
                    <tr>
                        <th>
                            <asp:Label ID="lblAnimalInfo" runat="server" Text="Animal Information"></asp:Label>
                        </th>
                        <th></th>
                        <th>
                            <asp:Label ID="lblTag" runat="server" Text="Tag Information"></asp:Label>
                        </th>
                        <th></th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblAnimalSpecies" runat="server" Text="Species"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddlAnimalSpecies" runat="server">
                                <asp:ListItem>Cow</asp:ListItem>
                                <asp:ListItem>Buffalo</asp:ListItem>
                                <asp:ListItem>Bunny</asp:ListItem>
                                <asp:ListItem>Donkey</asp:ListItem>
                                <asp:ListItem>Goat</asp:ListItem>
                                <asp:ListItem>Horse</asp:ListItem>               
                                <asp:ListItem>LLama</asp:ListItem>
                                <asp:ListItem>Pig</asp:ListItem>
                                <asp:ListItem>Sheep</asp:ListItem>
                                <asp:ListItem>Yak</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:Label ID="lblTagNumber" runat="server" Text="Tag Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTagNumber" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGender" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:DropDownList ID="ddlGender" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                                                <td>
                            <asp:Label ID="lblTagColor" runat="server" Text="Tag Color"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>

                        <td>
                            <asp:Label ID="lblBirthDate" runat="server" Text="Birth Date"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Calendar ID="calBirthDate" runat="server"></asp:Calendar>
                        </td>
                        <td>
                            <asp:Label ID="lblSpecialInformation" runat="server" Text="Special Information"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSpecialInformation" runat="server" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblSellDeathDate" runat="server" Text="Sell/Death Date"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:Calendar ID="calSellDeathDate" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblTemperment" runat="server" Text="Temperment"></asp:Label>
                        </td>
                        <td class="auto-style5">
                            <asp:TextBox ID="txtTemperment" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <asp:Label ID="lblNotes" runat="server" Text="Notes"></asp:Label>
                        </td>
                        <td class="auto-style7">
                            <asp:TextBox ID="txtNotes" runat="server" TextMode="MultiLine" Height="49px" Width="202px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSubmit_Click" />
                        </td>
                        <td class="auto-style5">
                            <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
                        </td>
                    </tr>
                </table>


            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" runat="server" contentplaceholderid="Stylesheets">
    <link rel="stylesheet" href="/css/MasterPage.css" type="text/css" />
    <link rel="stylesheet" href="/css/Content.css" type="text/css" />
    <style type="text/css">
        .auto-style5 {
            width: 208px;
        }
        .auto-style6 {
            height: 65px;
        }
        .auto-style7 {
            width: 208px;
            height: 65px;
        }
    </style>
    </asp:Content>

