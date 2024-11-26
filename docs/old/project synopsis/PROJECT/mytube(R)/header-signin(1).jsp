<html>
<head>
<script language="javascript" src="js/imgsz1.js"></script>
<style type="text/css">
 .MyLink { COLOR: blue; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }

 </style>
</head>
<body background="img/background.jpg">
<%
String name=(String)session.getAttribute("name");
System.out.println(name);
%>
<form action="checkplaylist.jsp">
<table width="100%"  border="0">
  <tr>
    <td width="132" height="58" valign="top"><center>
        <img id="image" src="img/mylogo11.gif" width="130" height="48" onMouseOver="moveover()"
onMouseOut="moveback()">
    </center></td>
    <td width="270" align="center" valign="top">
      <input id=Search size=65 name="search"></td>
    <td width="97" align="left" valign="top"><input name="image" type="image" src="img/Search_button.gif"></td>
    <td width="470" align="right" valign="top"><font face="Arial, Helvetica, sans-serif" size="-1">
      <%
	if(name==null)
	{}
	else
	out.println("<font color='blue'>Welcome </font><font color='red'>"+name+"</font>");
	%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
href="index.jsp" class=MyLink>Browse</a>&nbsp;|&nbsp;
      <%
if(name==null)
{
%>
      <a class=MyLink
href="signIn.jsp">Upload</a>&nbsp;|&nbsp;
      <%
}
else
{
%>
      <a class=MyLink
href="upload.jsp">Upload</a>&nbsp;|&nbsp;
      <%
}
if(name==null)
{
%>
      <a class=MyLink
href="signIn.jsp">Sign In</a>
      <%
}
else
{
%>
      <a class=MyLink
href="SignOut.jsp">Sign Out</a>
      <%
}
%>
    </font></td>
  </tr>
  <tr>
    <td colspan="4" valign="top"><hr color="#FF3366"></td>
  </tr>
</table>
</form>
</body>
</html>
