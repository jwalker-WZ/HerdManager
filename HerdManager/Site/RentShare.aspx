<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HerdManager.Site.RentShare" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">
        <div class="middle">
            <div class="RentShareCenter">
                <table id="RentShareTable">
                    <tr>
                        <asp:Label ID="Label1" runat="server" Text="Contact Information"></asp:Label>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                        </td>


                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblNum" runat="server" Text="Phone Number"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPhoneNum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblType" runat="server" Text="Type"></asp:Label>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlType" runat="server">
                                <asp:ListItem>Rent</asp:ListItem>
                                <asp:ListItem>Share</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblStartDate" runat="server" Text="Start Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calStart" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblEndDate" runat="server" Text="End Date"></asp:Label>
                        </td>
                        <td>
                            <asp:Calendar ID="calEnd" runat="server"></asp:Calendar>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
                        </td>
                        <td>
                            <asp:Button ID="btnClear" runat="server" Text="Clear" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>

</asp:Content>


