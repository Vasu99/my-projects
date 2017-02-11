<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="MyKart.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .rows {
            min-height: 100px;
        }
    </style>

    <!-- banner -->
    <div class="page-head">
        <div class="container">
            <h3>Check Out</h3>
        </div>
    </div>
    <!-- //banner -->
    <!-- check out -->
    <div class="checkout">
        <div class="container">
            <h3>My Shopping Bag</h3>
            <asp:Label ID="lblmessage" runat="server" Text=""></asp:Label>
            <asp:GridView ID="gdcheckout" AutoGenerateColumns="False" runat="server" align="center" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="6">
                <EmptyDataTemplate>
                    !No Record exists...
                </EmptyDataTemplate>
                <Columns>
                    <asp:TemplateField HeaderText="Remove Item" ItemStyle-Width="200px">
                        <ItemTemplate>
                            <img src="Images/rem.jpg" id='<%#Eval("Id") %>' class="imgremove" style="cursor: pointer" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Product Image" ItemStyle-Width="300px" HeaderStyle-Height="30px">
                        <ItemTemplate>
                            <a href="http://localhost:7128/testsingle.aspx?field1='<%#Eval("Id") %>'" onclick="addtocart">
                               <%-- <asp:Image ID="imgitem" runat="server" ImageUrl='<%#Eval("ImageUrl") %>' Height="315px" Width="285px" />--%>
                                <asp:Image ID="imgitem" runat="server" ImageUrl='<%#Eval("ImageUrl") %>' Height="215px" Width="185px" />

                            </a>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name" ItemStyle-Width="200px">
                        <ItemTemplate>
                            <h2><b><i>
                                <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>'></asp:Label></i></b></h2>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price" ItemStyle-Width="200px">
                        <ItemTemplate>

                            <h4><b>Rs.
                                <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>'></asp:Label></b></h4>

                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Buy The Item" ItemStyle-Width="160px">
                        <ItemTemplate>
                            <div class="sign-up">
                                <%--<asp:Button ID="btnitembuy" runat="server" Text="Buy Item" Height="40px" Width="102px" OnClick="btncartbuy_Click" BackColor="#FCB30E" ForeColor="White" />--%>
                                 <a href="http://localhost:7128/Payment.aspx?field1='<%#Eval("Id") %>'" >
                                        <asp:Image ID="img1" runat="server" ImageUrl="~/Images/Capture.png" Height="80" Width="130" /></a>
                            </div>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#FDA30E" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Center" />
                <RowStyle ForeColor="#000066" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />

            </asp:GridView>
         
            <div class="clearfix"></div><br/><%--<br/>--%>
            <div align="right">
                <asp:Label ID="lbltotalsum" runat="server" Text="" Font-Size="Large"></asp:Label><br />
             <asp:Button ID="btnitembuy" runat="server" Text="Buy All Items" Height="45px" Width="170px" OnClick="btncartbuy_Click" BackColor="#FCB30E" ForeColor="White" />
                </div>
        </div>
    </div>

    <!-- //check out -->
</asp:Content>
