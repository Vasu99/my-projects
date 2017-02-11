<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="MyKart.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
       table{
           margin-left:30px;
       }
        td{
            margin-left:10px;
            padding:5px 5px 5px 5px;
        }
        
    </style>
    <br/>
    <br/>
    <table>
        <tr>
            <td><asp:Label ID="lbltext" runat="server" Text="Enter your mobile no. for secure payment" ForeColor="#FCB30E"></asp:Label></td>
            
        </tr>
        <tr>
            <td> <asp:TextBox ID="txtmobno" runat="server" BorderColor="#FCB30E"></asp:TextBox></td>
        </tr>
        <tr>
            <td> <asp:Button ID="btnmobno" runat="server" Text="Proceed To Pay" BackColor="#FCB30E" ForeColor="White" /></td>
        </tr>
    </table>
    
   <br/>
    <br/>
   
</asp:Content>
