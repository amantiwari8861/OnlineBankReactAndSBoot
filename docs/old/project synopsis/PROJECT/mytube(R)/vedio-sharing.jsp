<html>
<head>
<title></title>
<style type="text/css">
 .MyLink { COLOR: blue; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }

 </style>

</head>
<body>
<form action="createAccount.jsp">
<table  width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
   &nbsp;<td height="64" colspan="2" bgcolor="#CCCC99"><font face="Arial, Helvetica, sans-serif" size="4"><b>&nbsp;&nbsp;Join the largest worldwide video-sharing
community!</b></font></td>
    <td width="341" align="center"><a href="http://www.google.co.in/"><img src="img/logo-Google.gif" width="78" height="53" alt="Google" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.orkut.com" class="MyLink"><img src="img/orkut_scrap.jpg" width="71" height="47" alt="Orkut" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.facebook.com/" class="MyLink"><img src="img/logo-facebook.gif" width="46" height="47" alt="facebook" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.gmail.com"><img src="img/gmail_logo.jpg" width="72" height="36" alt="Gmail" border="0"></img></td>
  </tr>
  <tr>
    <td width="281" bgcolor="#CCCC99" align="center">&nbsp;
      <input name="image" type="image" src="img/create_account1.gif" >
	  </td>
    <td width="294" bgcolor="#CCCC99">Already have an account? </SPAN>
	<%
	String name=(String)session.getAttribute("name");
	if(name==null)
	{
	%>
	<A href="signIn.jsp" class="MyLink"><b><font size="+1">SignIn</font></b></A>
	<%
	}
	else
	{
	%>
	<A href="notSignin.jsp" class="MyLink"><b><font size="+1">SignIn</font></b></A>
	<%
	}
	%>
	</td>
    <td width="341" align="center"><a href="http://www.microsoft.com/india/windows/internet-explorer/default_XP.aspx"><img src="img/ie-logo.gif" width="50" height="53" alt="internet Explorer" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.mozilla.com/en-US/firefox/beta/"><img src="img/mozillla_logo.png" width="41" height="47" alt="Fire Fox" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.google.com/chrome"><img src="img/google_chrome_logo.gif" width="46" height="47" alt="google crome" border="0"></img></a>&nbsp;&nbsp;<a href="http://www.opera.com/"><img src="img/opera_logo.png" width="54" height="53" alt="opera" border="0"></img></a></td>
  </tr>
</table>
</form>
</body>

</html>