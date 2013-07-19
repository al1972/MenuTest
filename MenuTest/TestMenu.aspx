<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestMenu.aspx.cs" Inherits="MenuTest.TestMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0"/>
    <link rel="stylesheet" type="text/css" href="menu.css" />
</head>
   
<body>
       <div style="margin-left: 20%; margin-right: 20%; border: none; padding: 0;text-align: center;">
           <!-- Menu Code -->
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
    <!-- End of Menu -->

    <form id="form1" runat="server">
           <div>
 
            
          <table border="1" style="width:100%;">
             <tr><td colspan="4" style="text-align:right;"><div id="dvuserid"  runat="server"><asp:LinkButton  ID="btnlink" runat="server" Text=""  ></asp:LinkButton></div></td></tr>
            <tr>
                <td>
                    <table  style="width:100%;" border="0">
                         <tr>
                            <td colspan="2" style="text-align:left;">
                                <asp:Label ID="Label4" runat="server" Text="Sign in"></asp:Label>
                                </td>
                            
                             <td colspan="2" style="text-align:left;">
                                <asp:Label ID="Label5" runat="server" Text="New User Sign Up"></asp:Label>
                                </td>
                            
                         
                          
                        </tr>
                        <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                                <asp:TextBox TabIndex="1" runat="server" ID="txtEmail"></asp:TextBox>

                            </td>
 
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="lblNewEmail" runat="server" Text="Email"></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                                <asp:TextBox TabIndex="4" runat="server" ID="txtNewEmail"></asp:TextBox>

                            </td>
                          
                        </tr>

                        <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="lblPwd" runat="server" Text="Password"></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                                <asp:TextBox  TabIndex="2" runat="server" ID="txtPwd"></asp:TextBox>

                            </td>
 
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="lblNewPwd" runat="server" Text="Enter Password"></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                                <asp:TextBox  TabIndex="5" runat="server" ID="txtNewPwd"></asp:TextBox>

                            </td>
                          
                        </tr>

                           <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                               &nbsp; 

                            </td>
 
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label3" runat="server" Text="Re-enter Password"></asp:Label>
                                </td>
                            
                            <td style="width:25%;text-align:left;">
                                <asp:TextBox TabIndex="6" runat="server" ID="txtReNewPwd"></asp:TextBox>

                            </td>
                          
                        </tr>

                         <tr>
                          <td colspan="2" style="text-align:center;">
                                <asp:Button ID="signin" TabIndex="3" runat="server" Text="Sign in"  ></asp:Button>
                                </td>
                            
                             <td colspan="2" style="text-align:center;">
                                <asp:Button ID="Signup" TabIndex="8" runat="server" Text="Sign Up" ></asp:Button>
                                </td>
                            
                          
                        </tr>
                        </table>
                    </td>
                </tr>
              </table>
            </div>

    </form>
      </div>
</body>
             
</html>
