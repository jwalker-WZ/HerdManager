<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="ViewAnimal.aspx.cs" Inherits="HerdManager.UserStatus.ViewAnimal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">
        <div class="middle">
            <div class="ViewAnimalCenter">
       <table id="ViewAnimalTable">
           <tr>
               <td>
                   <asp:GridView ID="gdvAnimals" runat="server">
                   </asp:GridView>
               </td>
           </tr>
               <asp:GridView ID="gdvVetWork" runat="server">
               </asp:GridView>
           <tr>
               <td>
                   <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                   <asp:Button ID="btnEdit" runat="server" Text="Edit" />
               </td>
           </tr>
       </table>
   </div>
            </div>
        </div>
        
</asp:Content>
