<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="HerdManager.UserStatus.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="centerdiv">
       <table id="LogInTable">
           <tr>
               <td>
                   <asp:Table ID="tblHerd" runat="server" ForeColor="White" GridLines="Horizontal" Height="264px" Width="485px" BackColor="White" BorderColor="Black" BorderStyle="Solid">
                       <asp:TableRow ID="ID" runat="server">
                       </asp:TableRow>
                       <asp:TableRow ID="mhc" runat="server">
                       </asp:TableRow>
                       <asp:TableRow ID="xgfhjk" runat="server">
                       </asp:TableRow>
                       <asp:TableRow ID="sdfsd" runat="server">
                       </asp:TableRow>
                   </asp:Table>
               </td>
           </tr>
           <tr>
               <td>
                <asp:LinkButton ID="lbtnAddNew" runat="server" Text="New Animal" PostBackUrl="~/UserStatus/NewAnimal.aspx"></asp:LinkButton>
                   </td>
           </tr>
       </table>
   </div>
        
</asp:Content>


