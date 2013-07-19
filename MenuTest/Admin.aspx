<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="MenuTest.Admin" %>
<%@ Register Assembly="Syncfusion.Tools.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Tools" TagPrefix="syncfusion" %>

<%@ Register Assembly="Syncfusion.Grid.Grouping.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Grid.Grouping" TagPrefix="syncfusion" %>

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
     <table border="1" style="width:100%;">
                          <tr>
                            <td colspan="4" style="width:100%;text-align:left;">
                                <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Release"></asp:ScriptManager>
          <Syncfusion:GridGroupingControl ID="GridGroupingControl1" TabIndex="2" runat="server"
                                BackColor="#DAE5F5" BorderColor="SlateGray"   BorderCollapse="Separate" ClientSideOnRecordClick="ShowSelectedRows(this)"
                                ShowFocusedBorder="False" AllowDragSelectForCopy="False" DragSelectionBackColor="Coral"
                                DataSourceCachingMode="None" EnableCallbacks="false" AutoFormat="Office 2007 Blue"
                                GroupDropAreaCssClass="GridOffice2007BlueGroupDropArea" >
                                <TableDescriptor AllowEdit="false" AllowNew="false" TopLevelGroupOptions-ShowSummaries="false" AllowColumnResize="false" AllowFilter="false" AllowRemove="false">
                                    <Columns>
                                        <Syncfusion:GridColumnDescriptor MappingName="Postingid"  Name="Postingid" HeaderText="Posting id">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="username" Name="username" HeaderText="User Name">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="shortdesc" Name="shortdesc" HeaderText="Title">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="description" Name="description" HeaderText="Description">
                                        </Syncfusion:GridColumnDescriptor>

                                         <Syncfusion:GridColumnDescriptor MappingName="timeadded" Name="timeadded" HeaderText="Time Added">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="categoryid" Name="categoryid" HeaderText="categoryid">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="phone" Name="phone" HeaderText="phone">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="active" Name="active" HeaderText="active">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="approved" Name="approved" HeaderText="approved">
                                        </Syncfusion:GridColumnDescriptor>

                                        <Syncfusion:GridColumnDescriptor MappingName="userid" Name="userid" HeaderText="userid">
                                        </Syncfusion:GridColumnDescriptor>
                                        
                                    </Columns>
                                </TableDescriptor>
                            </Syncfusion:GridGroupingControl>

                            </td>
                           
                        </tr>

         </table>
         <div style="border-width:medium">
            <table style="width:80%">
                <tr>
                    <td style="width:25%"><asp:Label id="Label1" runat="server" Text="Posting ID"></asp:Label></td>
                    <td style="width:25%"><asp:Label id="lblpostingid" runat="server" ></asp:Label></td>
                    <td style="width:25%"><asp:Label id="Label2" runat="server" Text="Approved" ></asp:Label></td>
                    <td "width:25%"><asp:Label id="lblapproved" runat="server" ></asp:Label>  </td></tr>
                <tr>
                     <td style="width:25%"><asp:Label id="Label4" runat="server" Text="Title"></asp:Label></td>
                   <td "width:25%"><asp:Label id="lblshortdesc" runat="server" ></asp:Label></td>
                    <td style="width:25%"><asp:Label id="Label5" runat="server" Text="User ID"></asp:Label></td>
                    <td "width:25%"><asp:Label id="lbluserid" runat="server" ></asp:Label></td></tr>

                 <tr> 
                       <td "width:25%"><asp:Label id="label6" runat="server" Text="Category ID" ></asp:Label></td>
                     <td "width:25%"><asp:Label id="lblcategoryid" runat="server" ></asp:Label></td>
                       <td "width:25%"><asp:Label id="label3" runat="server" Text="User Name" ></asp:Label></td>
                     <td "width:25%"><asp:Label id="lblusername" runat="server" ></asp:Label></td>
                 </tr>

                      <tr>   <td "width:25%"><asp:Label id="label10" runat="server" Text="Phone" ></asp:Label></td><td "width:25%"><asp:Label id="lblphone" runat="server" ></asp:Label></td>
                           <td "width:25%"><asp:Label id="label7" runat="server" Text="Time Added" ></asp:Label></td>
                     <td "width:25%"><asp:Label id="lbltimeadded" runat="server" ></asp:Label></td>
                </tr>
                     <tr>   <td "width:25%"><asp:Label id="label8" runat="server" Text="Active" ></asp:Label></td> <td "width:25%"> <asp:Label id="lblactive" runat="server" ></asp:Label></td>
                          <td "width:25%"><asp:Label id="label9" runat="server" Text="" ></asp:Label></td> <td "width:25%"> <asp:Label id="Label11" runat="server" ></asp:Label></td>
                         
                </tr>
                <tr><td colspan="4"><asp:Label id="lbldesc" runat="server" ></asp:Label></td></tr>
                    
                  <tr>
                            <td colspan="2" style="width:50%;text-align:right;">
                                 <div id="btnsubmit">
                                <asp:Button ID="Button1" runat="server" Text="Approve" OnClick="Approve_Click"></asp:Button>
                                     </div>
                            </td> 
                            <td colspan="2"  style="width:50%;text-align:left;">
                                 <div id="Delete">
                                <asp:Button ID="btnReject" runat="server" Text="Reject" OnClick="Reject_Click"></asp:Button></div>
                            </td>                       
                        </tr>               
                </table>
             </div>
        <script type="text/javascript">
            $(function () {
                var gridTable = GetEGridTable($get('<%= GridGroupingControl1.ClientID %>'));
                gridTable.HideColumn(0);
                gridTable.HideColumn(6);
                gridTable.HideColumn(7);
                gridTable.HideColumn(8);
                gridTable.HideColumn(9);
                gridTable.HideColumn(10);
            });
</script>
         <script type="text/javascript" lang="javascript">
             //To client Side Function
             function ShowSelectedRows(gridObj) {
                
                 try {
                  //   alert('hi');
                     var postingid = gridObj.Row.tableRow.children[1].innerHTML;
                    // alert(postingid);
                     var username = gridObj.Row.tableRow.children[2].innerHTML;
                    // alert(username);
                     var shortdesc = gridObj.Row.tableRow.children[3].innerHTML;
                   //  alert(shortdesc);
                     var desc = gridObj.Row.tableRow.children[4].innerHTML;
                  //   alert(desc);

                     var userid = gridObj.Row.tableRow.children[5].innerHTML;
                  //   alert(userid);
                     var categoryid = gridObj.Row.tableRow.children[6].innerHTML;
                  //   alert(categoryid);
                     var phone = gridObj.Row.tableRow.children[7].innerHTML;
                  //   alert(phone);
                     var timeadded = gridObj.Row.tableRow.children[8].innerHTML;
                 //    alert(timeadded);

                     var active = gridObj.Row.tableRow.children[9].innerHTML;
                 //    alert(active);
                     var approved = gridObj.Row.tableRow.children[10].innerHTML;
                 //    alert(approved);
                 }
                 catch (ex) {
                     alert(ex.toString());
                 }

                 document.getElementById('lblpostingid').innerHTML = postingid;
                 
                 //document.getElementById("lblpostingid").innerText = gridObj.Row.GetValue('Postingid');
                 document.getElementById("lblapproved").innerText = approved;
                 document.getElementById("lblshortdesc").innerText = shortdesc;
                 document.getElementById("lbldesc").innerText = desc;
                 document.getElementById("lbluserid").innerText = userid;

                 document.getElementById("lblcategoryid").innerText = categoryid;
                 document.getElementById("lblusername").innerText = username;
                 document.getElementById("lblphone").innerText = phone;
                 document.getElementById("lbltimeadded").innerText = timeadded;
                 document.getElementById("lblactive").innerText = active;


             }
             </script>
    </div>
    </form>
        </div>
</body>
</html>
