<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="DatabaseTesting.aspx.cs" Inherits="HerdManager.Site.DatabaseTesting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="lblTest" runat="server" Text="Press button to test connection"></asp:Label>
    <asp:Button ID="btnFirstTestConn" runat="server" OnClick="btnFirstTestConn_Click" Text="Test Connection" />
    <asp:Label ID="lblTstRegister" runat="server" Text="TestRegUsr"></asp:Label>
    <asp:Button ID="btnTestReg" runat="server" OnClick="btnTestReg_Click" Text="Test registration" />
</asp:Content>
