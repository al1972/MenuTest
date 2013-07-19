<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SyncDetails.aspx.cs" Inherits="MenuTest.SyncDetails" %>

<%@ Register Assembly="Syncfusion.Tools.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Tools" TagPrefix="syncfusion" %>

<%@ Register Assembly="Syncfusion.Grid.Grouping.Web, Version=11.2045.0.25, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89" Namespace="Syncfusion.Web.UI.WebControls.Grid.Grouping" TagPrefix="syncfusion" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%--<syncfusion:GridGroupingControl ID="GridGroupingControl1" runat="server"></syncfusion:GridGroupingControl>--%>

        <link rel="stylesheet" href="styles/nyroModal.css" type="text/css" media="screen" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.nyroModal.custom.js"></script>
<!--[if IE 6]>
	<script type="text/javascript" src="js/jquery.nyroModal-ie6.min.js"></script>
<![endif]-->
<script type="text/javascript">
    $(function () {
        $('.nyroModal').nyroModal();


    });
</script>
 
        <%--<script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>--%>

<asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Release"></asp:ScriptManager>
          <Syncfusion:GridGroupingControl ID="GridGroupingControl1" TabIndex="2" runat="server"
                                BackColor="#DAE5F5" BorderColor="SlateGray"   BorderCollapse="Separate" ClientSideOnRecordClick="ShowSelectedRows(this)"
                                ShowFocusedBorder="True" AllowDragSelectForCopy="True" DragSelectionBackColor="Coral"
                                DataSourceCachingMode="None" EnableCallbacks="false" AutoFormat="Office 2007 Blue"
                                GroupDropAreaCssClass="GridOffice2007BlueGroupDropArea" >
                                <TableDescriptor AllowEdit="false" AllowNew="false">
                                    <Columns>
                                        <Syncfusion:GridColumnDescriptor MappingName="id" Name="id" HeaderText="ID">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor MappingName="name" Name="name" HeaderText="Name">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor MappingName="shortdesc" Name="shortdesc"
                                            HeaderText="Short Desc">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor MappingName="description" Name="description" HeaderText="Description">
                                        </Syncfusion:GridColumnDescriptor>
                                        <Syncfusion:GridColumnDescriptor MappingName="Active" Name="Active" HeaderText="Is Active">
                                        </Syncfusion:GridColumnDescriptor>
                                    </Columns>
                                </TableDescriptor>
                            </Syncfusion:GridGroupingControl>


    </div>
         <script type="text/javascript" lang="javascript">
             //To client Side Function
             function ShowSelectedRows(gridObj)
             {
                 document.getElementById("lblid").innerText = gridObj.Row.GetValue('id');
                 document.getElementById("lblName").innerText = gridObj.Row.GetValue('name');
                 document.getElementById("lblshortdesc").innerText = gridObj.Row.GetValue('shortdesc');
                 document.getElementById("lbldesc").innerText = gridObj.Row.GetValue('description');
                 document.getElementById("lblActve").innerText = gridObj.Row.GetValue('Active');
      
                 
             }
             </script>

           <div>
            <table style="width:80%" >
                <tr>
                    <td><asp:Label id="lblid" runat="server" ></asp:Label></td>
                    <td><asp:Label id="lblName" runat="server" ></asp:Label>  </td></tr>
                <tr>
                   <td><asp:Label id="lblshortdesc" runat="server" ></asp:Label></td><td><asp:Label id="lbldesc" runat="server" ></asp:Label></td></tr>
                 <tr>   <td><asp:Label id="lblActve" runat="server" ></asp:Label></td><td>&nbsp;</td>
                </tr>
                <tr><td>
                    <asp:FileUpload ID="fileuploadImage" runat="server" />
                </td><td>
<asp:Button ID="btnUpload" runat="server" Text="Upload" onclick="btnUpload_Click" />
</td></tr>
         
             <%--<tr><td><asp:Image ID="Image1" runat="server"   Height="75px" Width="75px"/></td><td></td></tr>--%>
                 <tr><td>  <asp:DataList runat="server" ID="DataList1" RepeatDirection="Horizontal">
                                        <ItemTemplate>
                                        <a id="avalue" runat="server" href='<%#"HTTPHandler.ashx"%>'><asp:image ImageUrl="~/HTTPHandler.ashx" ID="image2" runat="server" Height="75px" Width="75px" /></a>

                                        </ItemTemplate>
                                    </asp:DataList></td></tr>
            </table>
        </div> 

    </form>
</body>
</html>
