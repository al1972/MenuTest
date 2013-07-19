<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MenuTest.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link type="text/css" href="styles/jquery-ui-1.8.23.custom.css" rel="Stylesheet" />	
<script type="text/javascript" src="scripts/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="scripts/jquery-ui-1.8.23.custom.min.js"></script>
	<link rel="stylesheet" href="styles/jquery.ui.all.css">
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
    <title></title>
   <script  type="text/javascript" >
  
//       $(function () {
//           $("#dialog:ui-dialog").dialog("destroy");

//            $("#dialog-form").dialog({
//               autoOpen: false,
//               height: 500,
//               width: 550,
//               modal: true,
//               buttons: {
//                   "Create an account": function () {
//                       var bValid = true;
//                       allFields.removeClass("ui-state-error");
// 

//                       if (bValid) {
//                           $("#users tbody").append("<tr>" +
//                           //							"<td>" + name.val() + "</td>" +
//                           "<td>" + name.val() + "</td>" +
//							"<td>" + email.val() + "</td>" +
//							"<td>" + password.val() + "</td>" +
//						"</tr>");
//                           $(this).dialog("close");
//                       }
//                   },
//                   Cancel: function () {
//                       $(this).dialog("close");
//                   }
//               },
//               close: function () {
//                   allFields.val("").removeClass("ui-state-error");
//               }
//           });

//           $("#UserName")
////			.button()
//			.click(function () {
//			    $("#dialog-form").dialog("open");
//			}

//            
//            );

//});

var xmlhttp = null;
function ShowSuggestions(str) {
    //    alert(str);
    $('#dialog-form').dialog({ autoOpen: false, height: 500, width: 550, modal: true, draggable: false, resizable: false
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
//alert(xmlhttp.responseText);
document.getElementById('Label1').innerHTML = xmlhttp.responseText;

}

//$("#dialog-form").fadeTo('slow', 0, function () {
//    $("#dialog-form").dialog('close');
//});

$('#clickme').click(function () {
    $('#book').fadeTo('slow', 0.5, function () {
        // Animation complete.
    });
});

//$('#UserName').click(function () { $('#dialog-form').dialog('open'); });

	</script>
</head>

<body>
    <form id="form1" runat="server"  >
    
<div class="demo">

<div id="dialog-form" title="Create new user">
	<p class="validateTips">All form fields are required.</p>

 
<%--    <asp:Label ID="Label1" runat="server" Text="<%# Container.DataItem("UserID")%>"></asp:Label>
		<input type="text" name="name" id="name" class="text ui-widget-content ui-corner-all" />
		<label for="email">Email</label>
		<input type="text" name="email" id="email" value="" class="text ui-widget-content ui-corner-all" />
		<label for="password">Password</label>
		<input type="password" name="password" id="password" value="" class="text ui-widget-content ui-corner-all" />--%>
         <asp:Label ID="Label1" runat="server"></asp:Label>
         <asp:TextBox runat=server  ID="Name"></asp:TextBox>
 <asp:Button runat="server" ID="submit" Text="Submit" />
 
</div>

<%--
<div id="users-contain" class="ui-widget">
	<h1>Existing Users:</h1>
	<table id="users" class="ui-widget ui-widget-content">
		<thead>
			<tr class="ui-widget-header ">
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>John Doe</td>
				<td>john.doe@example.com</td>
				<td>johndoe1</td>
			</tr>
		</tbody>
	</table>
</div>--%>
<%--<asp:Button id="createuser" OnClick="Link_Clicked" runat="server" Text="Click Test" ></asp:Button>--%>

</div><!-- End demo -->
<%--    <div>--%>
    <%--<a href="#inline-1" rel="prettyPhoto" >Click here</a>--%>
<%--	<div id="inline-1" class="hide">
		<p>This is inline content opened in prettyPhoto.</p>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p></div>
	</div>--%>
 <table border=1>
    <asp:Repeater ID="NJIRepeater" runat="server">
        <ItemTemplate>

       <tr><td>
         <%--<asp:LinkButton Font-Underline="false" ID="UserName" runat="server" OnClientClick="$('#dialog-form').dialog('open');"  OnClick="Link_Clicked" CommandArgument='<%#Eval("UserID")%>' Text='<%#Eval("UserName")%>' ></asp:LinkButton>--%>
         <asp:LinkButton runat="server" Font-Underline="false" ID="UserName" OnClientClick='<%# "ShowSuggestions(\"" + Eval("UserID").ToString() + "\");return false;"%>'   CommandArgument='<%#Eval("UserID")%>' Text='<%#Eval("UserName")%>' ></asp:LinkButton>
         </td>
         <td>
  <asp:HiddenField ID="UserID" runat="server" Value='<%#Eval("UserID")%>'></asp:HiddenField>
        </td>
        </tr>
        </ItemTemplate>
    </asp:Repeater>
 </table>
  <asp:Label ID="Label2" runat="server"></asp:Label>
    </form>
</body>
</html>
