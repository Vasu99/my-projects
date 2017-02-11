<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="MyKart.test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:TextBox ID="txttestsearch" runat="server" Width="460px" Height="40px" onfocus="this.value=''" ></asp:TextBox>
                        <asp:Button ID="btntestitemsearch" runat="server" Text="Search" Height="40px" Width="102px" OnClick="btntestitemsearch_Click" BackColor="#FCB30E" ForeColor="White" />
                       

     <asp:DataList ID="dltest" runat="server" RepeatColumns="5" DataKeyField="Id" CellSpacing="2" CellPadding="3">
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
</asp:Content>
