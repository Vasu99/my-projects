<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="datatest.aspx.cs" Inherits="MyKart.datatest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .table {
            border: 2px;
            padding: 4px 4px 4px 4px;
        }
    </style>

    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" DataSourceID="Sqlitems" DataKeyField="Id" >

        <ItemTemplate>
            <div class="col-md-4 product-men no-pad-men">
					<div class="men-pro-item simpleCart_shelfItem">
						<div class="men-thumb-item">
							<img src='<%#Eval("ImageUrl") %>' runat="server" alt="" class="pro-image-front"/>
							<img src='<%#Eval("ImageUrl") %>' runat="server" alt="" class="pro-image-back"/>
										<div class="men-cart-pro">
											<div class="inner-men-cart-pro">
												<a href="single.html" class="link-product-add-cart">Quick View</a>
											</div>
										</div>
										<span class="product-new-top">New</span>
										
						</div>
						<div class="item-info-product ">
									<h4><a href="single.html"><%#Eval("Name") %></a></h4>
									<div class="info-product-price">
										<span class="item_price">Rs.<%#Eval("Price") %></span>
										<%--<del>$69.71</del>--%>
									</div>
									<a href="#" class="item_add single-item hvr-outline-out button2">Add to cart</a>									
						</div>
					</div>
				</div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="Sqlitems" runat="server" ConnectionString='<%$ ConnectionStrings:kartconnection %>' SelectCommand="SELECT * FROM [tblItems]"></asp:SqlDataSource>
</asp:Content>
