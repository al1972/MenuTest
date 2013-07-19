<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInfo.aspx.cs" Inherits="MenuTest.AccountInfo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
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
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
