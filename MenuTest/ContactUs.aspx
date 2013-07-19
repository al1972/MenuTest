<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="MenuTest.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link rel="stylesheet" type="text/css" href="menu.css" />
    <title></title>
</head>
<body>
     <div style="margin-left: 20%; margin-right: 20%; border: none; padding: 0;text-align: center;">
    <form id="form1" runat="server">
        
   
        <div class="page_wrapper">
    <div class="responsive_menu_container responsive_menu_blue"><!-- MENU CONTAINER -->
	<!-- Menu Trigger Button -->
		<label for="menu-dropdown-0" class="toggle_menu_label">Menu</label>
		<input type="checkbox" class="toggle_menu" id="menu-dropdown-0"/>
		<!-- End Menu Trigger Button -->
	<ul class="responsive_menu"><!-- Menu Bar -->
			<li><!-- 1st Menu Item -->
		        	<a href="#">Home</a>
		        
			</li><!-- End 1st Menu Item -->
        			<li><!-- 2nd Menu Item -->
		       	<a href="#">Post Ad</a>
		         
				 
			</li> 
        			<li><!-- 3rd Menu Item -->
		        <label for="menu-dropdown-1c" class="parent">Browse Ads</label>
		        
				<ul><!-- Drop Down Level 1 -->
					<li><a href="#">Services</a></li>
					<li><a href="#">Jobs/Training</a></li>
					<li><a href="#">Buy/Sell</a></li>
					
				</ul><!-- End Drop Down Level 1 -->
			</li><!-- End 3rd Menu Item -->
			<li><!-- 4th Menu Item -->
		       	<a href="#">Contact Us</a>
		         
			</li><!-- End 4th Menu Item -->
			<li><!-- 5th Menu Item -->
		        <a href="#">Sign In</a>
		</li><!-- End 5th Menu Item -->
		</ul><!-- End Menu Bar -->
	</div><!-- END MENU CONTAINER -->
	<!-- DESCRIPTION - NOT PART OF THE MENU -->
</div>
    
   <table border="1">
       <tr><td style="width:50%;" ><asp:Label runat="server" Text="Name"></asp:Label></td><td style="width:50%;"><asp:TextBox runat="server" ID="txtName"></asp:TextBox></td></tr>
        <tr><td style="width:50%;"><asp:Label ID="Label1" runat="server" Text="Email"></asp:Label></td><td style="width:50%;"><asp:TextBox runat="server" ID="TextBox1"></asp:TextBox></td></tr>
        <tr><td style="width:50%;"><asp:Label ID="Label2" runat="server" Text="Message"></asp:Label></td><td style="width:50%;"><asp:TextBox Rows="10" TextMode="MultiLine" runat="server" ID="TextBox2"></asp:TextBox></td></tr>
        <tr><td style="width:50%;" ><asp:Button ID="btnSubmit" runat="server" Text="Submit"></asp:Button></td><td style="width:50%;"><asp:Button runat="server" ID="btnClear" Text="Clear"></asp:Button></td></tr>
   </table>
       
    </form>
     </div>
</body>
</html>
