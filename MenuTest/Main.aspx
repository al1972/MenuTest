<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="MenuTest.Main" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
              <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.min.js"></script>

<link type="text/css" href="styles/jquery-ui-1.8.23.custom.css" rel="Stylesheet" />	
 
<script type="text/javascript" src="scripts/jquery-ui-1.8.23.custom.min.js"></script>
	<link rel="stylesheet" href="styles/jquery.ui.all.css" />
	<script type="text/javascript"  src="scripts/jquery-1.8.0.js"></script>
    <%--	<script  type="text/javascript" src="scripts/jquery.bgiframe-2.1.2.js"></script>
--%>	<script  type="text/javascript" src="scripts/jquery.ui.core.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.widget.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.mouse.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.button.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.draggable.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.position.js"></script>
	<script  type="text/javascript" src="scripts/jquery.ui.resizable.js"></script>
	<script type="text/javascript"  src="scripts/jquery.ui.dialog.js"></script>
	<script type="text/javascript"  src="scripts/jquery.effects.core.js"></script>
    <script type="text/javascript"  src="scripts/json2.js"></script>
     <script type="text/javascript"  src="scripts/json_parse.js"></script>
    <title></title>
     <script  type="text/javascript" >
         var xmlhttp = null;
         function ShowSuggestions(str) {
             //    alert(str);
             $('#dialog-form').dialog({ autoOpen: false, height: 600, width: 650, modal: true, draggable: false, resizable: false
    ,
                 open: function () {
                     jQuery('.ui-widget-overlay').bind('click', function () {
                         jQuery('#dialog-form').dialog('close');

                     })
                 }

             });
             $('#dialog-form').dialog('open');
             if (str.length == 0) {
                 document.getElementById('Label1').innerHTML = '';
                 return;
             }
             if (window.XMLHttpRequest) {
                 // code for IE7+, Firefox, Chrome, Opera, Safari
                 xmlhttp = new XMLHttpRequest();
             }
             else {
                 // code for IE6, IE5
                 xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
             }
             var url = 'Search.aspx?q=' + str;
             xmlhttp.open('GET', url, false);
             xmlhttp.send(null);
//             var JSONObject = eval("(" + xmlhttp.responseText + ")");
    //         JSONObject = JSON.parse(xmlhttp.responseText);

             document.getElementById('Label1').innerHTML = xmlhttp.responseText;
             var data = xmlhttp.responseText.split("~||~||~");
             //window.alert(data[0]);
             //window.alert(data[1]);
            
 
         }

       
 
         $('#clickme').click(function () {
             $('#book').fadeTo('slow', 0.5, function () {
 
             });
         });

         function ContactUs() {
             //    alert(str);
             $('#contactus').dialog({
                 autoOpen: false, height: 600, width: 650, modal: true, draggable: false, resizable: false
    ,
                 open: function () {
                     jQuery('.ui-widget-overlay').bind('click', function () {
                         jQuery('#contactus').dialog('close');

                     })
                 }
             });
             $('#contactus').dialog('open');

         }

 
	</script>
    <script type="text/javascript">        $(function () {
            $("input[type=text]").first().focus();
        });</script>

            <script type="text/javascript">
                function Dothis() {
                    
                    if (window.XMLHttpRequest) {
                        // code for IE7+, Firefox, Chrome, Opera, Safari
                        xmlhttp = new XMLHttpRequest();
                    }
                    else {
                        // code for IE6, IE5
                        xmlhttp = new ActiveXObject('Microsoft.XMLHTTP');
                    }
                    var url = 'Mail.aspx';
                    xmlhttp.open('GET', url, false);
                    xmlhttp.send(null);
                    //             var JSONObject = eval("(" + xmlhttp.responseText + ")");
                    //         JSONObject = JSON.parse(xmlhttp.responseText);

                    document.getElementById('me').innerHTML = xmlhttp.responseText;
                }

  </script>

</head>
<body>
    <form id="form1" runat="server" style="font-family:Tahoma; font-style:normal; font-size:small;">
    <div id="dialog-form" title="Buy Sell" style="display:none; font-family:Tahoma; font-style:normal;">
    <table border=0><tr><td colspan="2">
         <asp:Label ID="Label1"  runat="server"></asp:Label></td></tr>
     <tr><td colspan=2>   <hr /></td></tr> 
<tr><td>
          <asp:Label ID="Label2" runat="server">Name</asp:Label></td><td><asp:TextBox runat="server"  ID="Name"></asp:TextBox> <asp:Label Text='<%#Eval("email")%>' ID="Label6" runat="server"></asp:Label> </td></tr>
   <tr><td>       <asp:Label ID="Label3" runat="server">Email</asp:Label></td><td><asp:TextBox runat="server"  ID="youremail"></asp:TextBox> </td></tr>
     <tr><td>        <asp:Label ID="Label4" runat="server">Phone</asp:Label></td><td><asp:TextBox runat="server"  ID="phone"></asp:TextBox></td></tr>
     <tr><td>         <asp:Label ID="Label5" runat="server">Message</asp:Label></td><td><asp:TextBox TextMode="multiline" runat="server" Rows="10" Columns = "40"></asp:TextBox></td></tr>
<tr><td colspan="2">  <input id="cmdSubmit_Create" onclick="Dothis();" value="Submit" type="submit" /> <asp:HiddenField ID="UserID" runat="server" Value='<%#Eval("email")%>'></asp:HiddenField></td></tr>
        <tr><td >       <div id="me">
           
    </div></td></tr>

 </table>
 </div>
  
        <!-- contact us -->
         <div id="contactus" title="Contact Us" style="display:none; font-family:Tahoma; font-style:normal;">
    <table border=0><tr><td colspan="2">
         <asp:Label ID="Label7"  runat="server"></asp:Label></td></tr>
     <tr><td colspan=2>   <hr /></td></tr> 
 
   <tr><td>       <asp:Label ID="Label10" runat="server">Name</asp:Label></td><td><asp:TextBox runat="server"  ID="TextBox2"></asp:TextBox> </td></tr>
     <tr><td>        <asp:Label ID="Label11" runat="server">Email</asp:Label></td><td><asp:TextBox runat="server"  ID="TextBox3"></asp:TextBox></td></tr>
     <tr><td>         <asp:Label ID="Label12" runat="server">Message</asp:Label></td><td><asp:TextBox ID="TextBox4" TextMode="multiline" runat="server" Rows="10" Columns = "40"></asp:TextBox></td></tr>
<tr><td colspan="2">  <input id="Submit1" onclick="Submitform();" value="Submit" type="submit" />  </td></tr>
        <tr><td >       <div id="Div2">
           
    </div></td></tr>

 </table>
 </div>
        <!-- conact-->

    <div style="width:1349px">
    
    </div>
        <div style="margin-left: auto;margin-right: auto;text-align: left;width: 1000px;position: relative;background: white">
       <table width="100%" border="1">
       <tr><td style="width:50%">

       <asp:Repeater ID="NJIRepeater" runat="server">
        <ItemTemplate>
        <table>
       <tr  onmouseover="style.backgroundColor='LightBlue'" onmouseout="style.backgroundColor=''"><td>
         <asp:LinkButton runat="server" Font-Underline="false" ID="UserName" OnClientClick='<%# "ShowSuggestions(\"" + Eval("PostingID").ToString() + "\");return false;"%>'   CommandArgument='<%#Eval("PostingID")%>' Text='<%#Eval("ShortDesc")%>' ></asp:LinkButton>
         </td>
         <td>
            <asp:HiddenField ID="UserID" runat="server" Value='<%#Eval("PostingID")%>'></asp:HiddenField>
        </td>
        </tr>
        </table>
        </ItemTemplate>
    </asp:Repeater>
       
       </td><td style="width:50%">test2</td></tr>
       <tr><td style="width:50%">test3</td><td style="width:50%">test4</td></tr>
       <tr><td style="width:50%">test5</td><td style="width:50%"><asp:LinkButton runat="server" ID="testContact" OnClientClick="ContactUs();">Contact US</asp:LinkButton></td></tr>
       
       
       
       </table>
    </div>
    </form>
</body>
</html>
