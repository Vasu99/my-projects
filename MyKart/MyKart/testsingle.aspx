<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="testsingle.aspx.cs" Inherits="MyKart.testsingle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="dlitemshow" runat="server" DataKeyField="Id">
        <ItemTemplate>
            <div class="single">
	<div class="container">
		<div class="col-md-6 single-right-left animated wow slideInUp animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInUp;">
			<div class="grid images_3_of_2">
				<div class="flexslider">
                    <asp:Image ID="Image1" runat="server" Width="550" ImageUrl='<%#Eval("ImageUrl") %>' />
					<div class="clearfix"></div>
				</div>	
			</div>
		</div>
		<div class="col-md-6 single-right-left simpleCart_shelfItem animated wow slideInRight animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: slideInRight;">
					<!--<h3>Asics Gel Zaraca 4 Blue Sport Shoes</h3>-->
            <asp:Label ID="lblname" runat="server" Text='<%#Eval("Name") %>' Font-Bold="True" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label>
            <p color="FF9900"><span class="item_price">Price:</span></p>
					<p><span class="item_price">Rs. <asp:Label ID="lblprice" runat="server" Text='<%#Eval("Price") %>' Font-Bold="True" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label></span></p>
					
					<%--<div class="description">
						<h5>Check delivery, payment options and charges at your location</h5>
						<input type="text" value="Enter pincode" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter pincode';}" required=""/>
						<input type="submit" value="Check"/>
					</div>--%>
					<div class="color-quality">
						<%--<div class="color-quality-right">
							<h5>Quantity :</h5>
							<select id="country1" onchange="change_country(this.value)" class="frm-field required sect">
								<option value="null">1 Qty</option>
								<option value="null">2 Qty</option> 
								<option value="null">3 Qty</option>					
								<option value="null">4 Qty</option>								
							</select>
						</div>--%>
					</div>
             <div class="occasional">
                <h5><asp:Label ID="lblcolortag" runat="server" Text="Color" Font-Bold="True" Font-Size="X-Large" ForeColor="#FF9900"></asp:Label></h5>
            </div>
             <div class="occasional">
                <p>
                    <asp:Label ID="lblcolor" runat="server" Text='<%#Eval("Color") %>' Font-Bold="True" Font-Size="X-Large" ></asp:Label></p>
            </div>

            <div class="occasional">
                <h5>ADD Product to Cart:</h5>
            </div>
            <div class="occasion-cart">
						<a  class="item_add hvr-outline-out button2 cartadd" id="<%#Eval("Id") %>">Add to cart</a>
                  </div>
					
		</div>
				<div class="clearfix"> </div>
        <div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade in active bootstrap-tab-text" id="home" aria-labelledby="home-tab">
								<h5><font color="#FF9900"><b>Product Brief Description</b></font></h5>
                                <asp:Label ID="lbldescription" runat="server" Text='<%#Eval("Description") %>' ></asp:Label>
							</div>
                            </ItemTemplate>
							
    </asp:DataList>
						
</asp:Content>
