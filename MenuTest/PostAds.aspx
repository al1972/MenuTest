<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAds.aspx.cs" Inherits="MenuTest.PostAds" %>
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
    <div>
          <table border="1" style="width:100%;">
            <tr>
                <td>
                    <table  style="width:100%;" border="1">
                        <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                                <asp:DropDownList  runat="server" ID="dlCategory"></asp:DropDownList>

                            </td>
                          
                        </tr>
                        <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label2" runat="server" Text="Title"></asp:Label>
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                                <asp:TextBox  runat="server" ID="txtTitle"></asp:TextBox>

                            </td>
                          
                        </tr>
                         <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label3" runat="server" Text="Contact #"></asp:Label>
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                                <asp:TextBox  runat="server" ID="txtContact"></asp:TextBox>

                            </td>
                          
                        </tr>
                         <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label4" runat="server" Text="Description"></asp:Label>
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                                 <asp:ScriptManager ID="ScriptManager1" runat="server" ScriptMode="Release"></asp:ScriptManager>
                            <syncfusion:RichTextEditor EnableTheming="false" ShowEditToolbar="false" ShowFormatToolbar="false" ShowHelpToolbar="false" ShowInsertToolbar="false"
                                      ShowStandardToolbar="false" ShowStatusBar="false" ShowStyleToolbar="false" ShowTableToolbar="false" ShowToolsToolbar="false" ShowUpdateCancelButton="false" ShowViewDesignButton="false" ShowViewHtmlButton="false"
                                       ID="RTEDesc" runat="server" Height="420" Width="620"></syncfusion:RichTextEditor>
                                <%--<asp:TextBox Rows="10" TextMode="MultiLine" Columns="60" runat="server" ID="RTEDesc"></asp:TextBox>--%>

                            </td>
                          
                        </tr>

                           <tr>
                            <td style="width:25%;text-align:left;">
                                <asp:Label ID="Label5" runat="server" Text="Update picture"></asp:Label>
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                    <asp:FileUpload ID="fileuploadImage1" runat="server" />

                            </td>
                          
                        </tr>
                         <tr>
                            <td style="width:25%;text-align:left;">
                                
                                </td>
                            
                            <td style="width:75%;text-align:left;">
                    <asp:FileUpload ID="fileuploadImage2" runat="server" />

                            </td>
                          
                        </tr>

                         <tr>
                             
                            <td colspan="2" style="width:50%;text-align:right;">
                                 <div id="btnsubmit">
                                <asp:Button ID="Label10" runat="server" Text="Submit" OnClick="Submit_Click"></asp:Button>
                                     </div>
                            </td> 
                            <td colspan="2"  style="width:50%;text-align:left;">
                                 <div id="Delete">
                                <asp:Button ID="btnClear" runat="server" Text="Clear"></asp:Button></div>
                            
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
