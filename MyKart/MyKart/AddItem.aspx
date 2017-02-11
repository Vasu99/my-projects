<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="AddItem.aspx.cs" Inherits="MyKart.AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .drop {
            width: 200px;
            padding: 10px;
        }
        </style>
   <script type="text/javascript">
       function Validate() {
           var itemname = $("#ContentPlaceHolder1_txtitemname");
           var desc = $("#ContentPlaceHolder1_txtdescp");
           var price = $("#ContentPlaceHolder1_txtprice");
           var type = $("#ContentPlaceHolder1_ddltype");
           var brand = $("#ContentPlaceHolder1_ddlbrand");
           var color = $("#ContentPlaceHolder1_txtcolor")
                var errcount = 0;
                if(itemname.val()=="")
                {
                    errcount =errcount + 1;
                    itemname.css('border-color','RED');
                }
                if (desc.val() == "") {
                    errcount =errcount + 1;
                    desc.css('border-color', 'RED');
                }
                if (price.val() == "") {
                    errcount = errcount + 1;
                    price.css('border-color', 'RED');
                }
                if (brand.val() == "") {
                    errcount = errcount + 1;
                    brand.css('border-color', 'RED');
                }
                if (type.val() == "") {
                    errcount =errcount + 1;
                    type.css('border-color', 'RED');
                }
                if (color.val() == "") {
                    errcount = errcount + 1;
                    color.css('border-color', 'RED');
                }
                if(errcount>0)
                {
                    return false;
                }

            }
    </script>

    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">

            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login">
                        <div class="login-bottom">
                            <h3>Add the Item</h3>
                            <div class="sign-up">
                                <h4>Name</h4>
                                <asp:TextBox ID="txtitemname" runat="server"></asp:TextBox>
                            </div>
                            <div class="sign-up">
                                <h4>Description</h4>
                                <input type="text" id="txtdescp" value="" runat="server" />
                            </div>
                             <div class="sign-up">
                                <h4>Color</h4>
                                <input type="text" id="txtcolor" value="" runat="server"  />
                            </div>
                             <div class="sign-up">
                                <h4>Price</h4>
                                <input type="text" id="txtprice" value="" runat="server"  />
                            </div>
                           <div class="drop">
                                <h4>Item Type</h4>
                                <select id="ddltype" runat="server" style="width: 320px; height: 40px; outline: none;">
                                    <option value="">Select Type</option>
                                    <option value="Mens">Mens Wear</option>
                                    <option value="Womens">Womens Wear</option>
                                    <option value="Electronics">Electronics</option>
                                    <option value="Perfumes">Perfumes</option>
                                    <option value="Shoes">Shoes</option>
                                </select>
                            </div>
                           
                            <div class="drop">
                                <h4>Brand</h4>
                                <select id="ddlbrand" runat="server" style="width: 320px; height: 40px; outline: none;">
                                    <option value="">Select Brand</option>
                                    <option value="Samsung">Samsung</option>
                                    <option value="Sony">Sony</option>
                                    <option value="Adidas">Adidas</option>
                                    <option value="Nike">Nike</option>
                                    <option value="Levis">Levis</option>
                                    <option value="Axe">Axe</option>
                                    <option value="Apple">Apple</option>
                                    <option value="Dell">Dell</option>
                                    <option value="Seagate">Seagate</option>
                                </select>
                            </div>
                            <div class="sign-in">
			      				
			               </div>
                            <div class="sign-up">
                                <asp:Button ID="btnadditem" runat="server" Text="Add Item" OnClientClick="return Validate()" OnClick="btnadditem_Click"  />
                            
                            </div> 
                           
                        </div>
                    </div>
                    <div class="login-bottom">
                            <h3>Upload Image</h3>
                        </div>
                    <div class="login-right">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                    
                    <div class="clearfix"></div>
           
                </div>
                

            </div>
        </div>
    </div>
 
</asp:Content>
