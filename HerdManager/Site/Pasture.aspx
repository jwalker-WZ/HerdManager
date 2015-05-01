<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Pasture.aspx.cs" Inherits="HerdManager.UserStatus.Pasture" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerdiv">
       <table id="LogInTable">
           <tr>
               <td>
                   <asp:Label ID="lblPastureLocation" runat="server" Text="Pasture Location"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtPastureLocation" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblPastureDescription" runat="server" Text="Pasture Description"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtPastureDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblFenceType" runat="server" Text="Fence Type"></asp:Label>
               </td>
               <td>
                   <asp:DropDownList ID="ddlFenceType" runat="server">
                       <asp:ListItem>Barbed Wire</asp:ListItem>
                       <asp:ListItem>Electric</asp:ListItem>
                       <asp:ListItem>Mesh</asp:ListItem>
                       <asp:ListItem>Combo Barb-Mesh</asp:ListItem>
                       <asp:ListItem>Combo Electric-Mesh</asp:ListItem>
                       <asp:ListItem>Combo Electric-Barb</asp:ListItem>
                   </asp:DropDownList>
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
