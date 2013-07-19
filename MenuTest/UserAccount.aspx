<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="MenuTest.UserAccount" %>
<%@ Register Assembly="Syncfusion.Tools.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Tools" TagPrefix="syncfusion" %>

<%@ Register Assembly="Syncfusion.Grid.Grouping.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Grid.Grouping" TagPrefix="syncfusion" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <div style="margin-left: 20%; margin-right: 20%; border: none; padding: 0;text-align: center;">
    <form id="form1" runat="server">
   
        <table border="1" style="width:100%;">
            <tr>
                <td>
                    <table  style="width:100%;" border="1">
                        <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label runat="server" Text="UserName"></asp:Label>

                            </td>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label>

                            </td>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label1" runat="server" Text="Member Since"></asp:Label>

                            </td>
                            <td style="width:25%;text-align:left;">
                                  <asp:Label ID="lblMembersince" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>

                          <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>

                            </td>
                            <td style="width:25%;text-align:left;">
                                <asp:LinkButton Text="Change Password" runat="server" ID="lnkPwdChange"></asp:LinkButton>

                            </td>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label6" runat="server" Text="# of Ads posted"></asp:Label>

                            </td>
                            <td style="width:25%;text-align:left;">
                                  <asp:Label ID="Label7" runat="server" Text=""></asp:Label>

                            </td>
                        </tr>

                          <tr>
                            <td colspan="4" style="width:100%;text-align:left;">
                                <asp:Label ID="Label8" runat="server" Text="Ads Posted" style="text-align:left;"></asp:Label>

                            </td>
                           
                        </tr>

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
                                        <Syncfusion:GridColumnDescriptor Width="25" MappingName="Postingid" Name="Postingid" HeaderText="Posting id">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor Width="50" MappingName="username" Name="username" HeaderText="User Name">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor Width="125" MappingName="shortdesc" Name="shortdesc"
                                            HeaderText="Title">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor Width="125" MappingName="description" Name="description" HeaderText="Description">
                                        </Syncfusion:GridColumnDescriptor>
                                        
                                    </Columns>
                                </TableDescriptor>
                            </Syncfusion:GridGroupingControl>

                            </td>
                           
                        </tr>
                          <tr>
                            <td colspan="1" style="width:25%;text-align:left;">
                                <asp:Label ID="Title" runat="server" Text="Title"></asp:Label>

                            </td>
                            <td colspan="3"  style="width:75%;text-align:left;">
                                <asp:TextBox ID="txtTitle" runat="server" Text="" Width="75%"></asp:TextBox>

                            </td>
                           
                        </tr>
                         <tr>
                            <td colspan="1" style="width:25%;text-align:left;">
                                <asp:Label ID="Label9" runat="server" Text="Description"></asp:Label>

                            </td>
                            <td colspan="3"  style="width:75%;text-align:left;">
                                  <syncfusion:RichTextEditor EnableTheming="false" ShowEditToolbar="false" ShowFormatToolbar="false" ShowHelpToolbar="false" ShowInsertToolbar="false"
                                      ShowStandardToolbar="false" ShowStatusBar="false" ShowStyleToolbar="false" ShowTableToolbar="false" ShowToolsToolbar="false" ShowUpdateCancelButton="false" ShowViewDesignButton="false" ShowViewHtmlButton="false"
                                       ID="RTEDesc" runat="server" Height="420" Width="620"></syncfusion:RichTextEditor>

                            </td>
                           
                        </tr>
                        <tr>
                             
                            <td colspan="2" style="width:50%;text-align:left;">
                                 <div id="Div1">
                               <asp:Label ID="Label11" runat="server" Text="Photos"></asp:Label>
                                     </div>
                            </td> 
                            <td colspan="2"  style="width:50%;text-align:left;">
                                 <div id="Div2">
                                </div>
                            
                            </td>
                         
                        </tr>
                         <tr>
                             
                            <td colspan="2" style="width:50%;text-align:right;">
                                 <div id="update">
                                <asp:Button ID="Label10" runat="server" Text="Update"></asp:Button>
                                     </div>
                            </td> 
                            <td colspan="2"  style="width:50%;text-align:left;">
                                 <div id="Delete">
                                <asp:Button ID="Button1" runat="server" Text="Delete"></asp:Button></div>
                            
                            </td>
                         
                        </tr>
                        
                         
                    </table>
                </td>
            </tr>
        </table>
      <%--   <div>
            <table style="width:80%" >
                <tr>
                    <td><asp:Label id="lblid" runat="server" ></asp:Label></td>
                    <td><asp:Label id="lblName" runat="server" ></asp:Label>  </td></tr>
                <tr>
                   <td><asp:Label id="lblshortdesc" runat="server" ></asp:Label></td><td><asp:Label id="lbldesc" runat="server" ></asp:Label></td></tr>
                 <tr>   <td><asp:Label id="lbluserid" runat="server" ></asp:Label></td><td>&nbsp;</td>
                </tr>
                </table>
             </div>--%>
    
    </form>
         </div>
   <script type="text/javascript" lang="javascript">
       //To client Side Function
       function ShowSelectedRows(gridObj) {
           document.getElementById('<%=txtTitle.ClientID%>').value = gridObj.Row.GetValue('shortdesc');
           
           document.getElementById('<%=RTEDesc.ClientID%>').value = gridObj.Row.GetValue('description');
       }
             </script>
</body>
</html>
