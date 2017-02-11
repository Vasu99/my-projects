<%@ Page Title="" Language="C#" MasterPageFile="~/mysite.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="MyKart.Index" %>
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
    
    <!--banner-->
    <div class="banner-grid">
	<div id="visual">
			<div class="slide-visual">
				<!-- Slide Image Area (1000 x 424) -->
				<ul class="slide-group">
					<li><img class="img-responsive" src="Images/ba1.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="Images/ba2.jpg" alt="Dummy Image" /></li>
					<li><img class="img-responsive" src="Images/ba3.jpg" alt="Dummy Image" /></li>
				</ul>

				<!-- Slide Description Image Area (316 x 328) -->
				<div class="script-wrap">
					<ul class="script-group">
						<li><div class="inner-script"><img class="img-responsive" src="Images/baa1.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="Images/baa2.jpg" alt="Dummy Image" /></div></li>
						<li><div class="inner-script"><img class="img-responsive" src="Images/baa3.jpg" alt="Dummy Image" /></div></li>
					</ul>
					<div class="slide-controller">
						<a href="#" class="btn-prev"><img src="Images/btn_prev.png" alt="Prev Slide" /></a>
						<a href="#" class="btn-play"><img src="Images/btn_play.png" alt="Start Slide" /></a>
						<a href="#" class="btn-pause"><img src="Images/btn_pause.png" alt="Pause Slide" /></a>
						<a href="#" class="btn-next"><img src="Images/btn_next.png" alt="Next Slide" /></a>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	<script type="text/javascript" src="js/pignose.layerslider.js"></script>
	<script type="text/javascript">
	    
	    $(window).load(function () {
	        $('#visual').pignoseLayerSlider({
	            play: '.btn-play',
	            pause: '.btn-pause',
	            next: '.btn-next',
	            prev: '.btn-prev'
	        });
	    });
	    //]]>
	</script>

</div>
    <!--banner-->

    


     <table><tr><td class="womenitemtable" >
                <asp:DataList ID="dlindexitems" runat="server" RepeatColumns="5" DataKeyField="Id" CellSpacing="2" CellPadding="3">

                    <ItemTemplate>
                        <div>
                          
                            <table class="table">
                                <tr>
                                    <td><%#Eval("Name") %></td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <a href="http://localhost:7128/testsingle.aspx?field1='<%#Eval("Id") %>'" >
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
					<%--</div>	
				</div>	
			</div>
		</div>
	</div>
</div>--%>
<!-- //product-nav -->
</asp:Content>
