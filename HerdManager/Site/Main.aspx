<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HerdManager.UserStatus.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerdiv">
       <table id="LogInTable">
           <tr>
               <td>
                   <asp:GridView ID="gdvAnimals" runat="server">
                   </asp:GridView>
               </td>
           </tr>
           <tr>
               <td>
                <asp:LinkButton ID="lbtnAddNew" runat="server" Text="New Animal" PostBackUrl="~/Site/NewAnimal.aspx"></asp:LinkButton>
                   </td>
           </tr>
       </table>
   </div>
        
</asp:Content>


