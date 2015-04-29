<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="HerdManager.UserStatus.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div id="NavBar">
        <a href="AnimalDescription.aspx">
            Animal Description
        </a>
        <a href="NewAnimal.aspx">
            New Animal
        </a>
        <a href="Pasture.aspx">
            New Pasture
        </a>
        <a href="VetWork.aspx">
            Vet Work
        </a>
        <a href="RentOrShare.aspx">
            Rent Or Share
        </a>
    </div>
    <div class="centerdiv">
       <table id="LogInTable">
          <tr>
              <td>
                  <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
              </td>
              <td>
                  <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
              </td>
          </tr>
           <tr>
               <td>
                   <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
               </td>
           </tr>
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
                   <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
               </td>
               <td>
                   <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" />
               </td>
           </tr>
       </table>
   </div>
        
</asp:Content>
