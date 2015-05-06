<%@ Page Title="" Language="C#" MasterPageFile="~/HeardManager.Master" AutoEventWireup="true" CodeBehind="VetWork.aspx.cs" Inherits="HerdManager.UserStatus.VetWork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="servesr">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="outer">
        <div class="middle">
            <div class="VetWorkCenter">
       <table id="VetWorkTable">
           <tr>
               <td>
                   <asp:Label ID="lblDate" runat="server" Text="Date"></asp:Label>
               </td>
               <td>
                   <asp:Calendar ID="calVetDate" runat="server"></asp:Calendar>
               </td>
           </tr>  
           <tr>
               <td>
                   <asp:Label ID="lblVet" runat="server" Text="Performed By"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtVetTech" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblWorkDone" runat="server" Text="Vet Work Done"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="txtWorkDone" runat="server" TextMode="MultiLine"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Button ID="btnClear" runat="server" Text="Clear" />
               </td>
               <td>
                   <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
               </td>
           </tr>
       </table>
   </div>
            </div>
        </div>
        
</asp:Content>