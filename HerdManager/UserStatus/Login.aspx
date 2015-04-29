<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HerdManager.UserStatus.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerdiv">
       <table id="LogInTable">
           <tr>
               <td>
                   <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
               </td>

               <td>
                   <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
               </td>
           </tr>

           <tr>
               <td>
                   <asp:Button ID="btnLogIn" runat="server" Text="Login" OnClick="btnSubmit_Click" />
               </td>
               <td>
                   <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
               </td>
               <td>
                   <asp:LinkButton ID="lbtnRegister" runat="server" Text="Register" PostBackUrl="~/UserStatus/Register.aspx"></asp:LinkButton>
                   <asp:Label ID="lblLogInFailed" runat="server"></asp:Label>
               </td>
           </tr>
       </table>
   </div>
</asp:Content>

