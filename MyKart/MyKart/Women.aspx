<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="Women.aspx.cs" Inherits="MyKart.Women" %>
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
        .womenitemtable{
            cell-padding:4px;
            cell-spacing:4px;
        }
    </style>
    <!-- banner -->
<div class="page-head">
	<div class="container">
		<h3>Women's Wear</h3>
	</div>
</div>
<!-- //banner -->

				<div class="clearfix"></div>
                <table><tr><td class="womenitemtable" cell-spacing="2px">
                <asp:DataList ID="dlwomenitems" runat="server" RepeatColumns="5" DataKeyField="Id" CellSpacing="2" CellPadding="3">

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
                          		<a href="Women.aspx" class="item_add single-item hvr-outline-out button2 cartadd"  id="<%#Eval("Id") %>"  >Add to cart</a>
                             
						</div></td></tr>
                            </table>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                    </td></tr></table>
		
			<div class="clearfix"></div>
	
		<%--<div class="pagination-grid text-right">
			<ul class="pagination paging">
				<li><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
				<li class="active"><a href="#">1<span class="sr-only">(current)</span></a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>
			</ul>
		</div>--%>

<!-- //mens -->
</asp:Content>
