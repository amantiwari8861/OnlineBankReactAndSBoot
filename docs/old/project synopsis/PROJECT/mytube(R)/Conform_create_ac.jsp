<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="header-signin.jsp"/>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
 .MyLink { COLOR: blue; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }

 </style>
</head>

<body background="img/background.jpg">
<font face="Arial, Helvetica, sans-serif" size="+3" color="green" >Your Account have been Created Successfully...</font><br><br>
<font face="Arial, Helvetica, sans-serif" size="+1">Now you can 
<%
String name=(String)session.getAttribute("name");
if(name==null)
{
%>
<a href="signIn.jsp" class="MyLink">Login</a>...
<%
}
else
{
%>
<a href="notSignin.jsp" class="MyLink">Login</a>...</font>
<%
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<jsp:include page="footer.jsp"/>
</body>
</html>
