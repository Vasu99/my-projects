<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="Mens.aspx.cs" Inherits="MyKart.Mens" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <style type="text/css">
        .table{
            padding:2px 2px 2px 2px;
            box-shadow: 10px 10px 5px #888888;
        }
        td {
            font-size:22px;
            font-family:Arial;
            color:black;
            text-align:center;
        }
    </style>
    <!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>Men's Wear</h3>
	</div>
</div>
<!-- //banner -->

    <!-- mens -->

             <asp:DataList ID="dlmenitems" runat="server" RepeatColumns="5" DataKeyField="Id" CellSpacing="2" CellPadding="3">

                    <ItemTemplate>
                        <div>
                           
                            <table class="table">
                                <tr>
                                    <td><%#Eval("Name") %></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <a href="http://localhost:7128/testsingle.aspx?field1='<%#Eval("Id") %>'" onclick="addtocart">
                                        <asp:Image ID="img1" runat="server" ImageUrl='<%#Eval("ImageUrl") %>' Height="230px" Width="227px" /></a>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rs.<%#Eval("Price") %></td>
                                </tr>
                                <tr><td align="center"></div>
                          		<a href="Mens.aspx" class="item_add single-item hvr-outline-out button2 cartadd" id="<%#Eval("Id") %>">Add to cart</a>
                             
						</div></td></tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
               
			<div class="clearfix"></div>

<!-- //mens -->
</asp:Content>
