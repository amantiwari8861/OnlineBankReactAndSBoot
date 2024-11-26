<html>
<jsp:useBean id="commentobj" class="dbbean.Comment_Bean" scope="session"/>
<jsp:setProperty name="commentobj" property="*"/>

<%@page import="java.util.*"%>

<%@ page import="java.io.*"%>
<head>

<style type="text/css">
 .MyLink { COLOR: white; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }
 </style>
</head>
<body>

<%
String video=request.getParameter("video");
System.out.println("ooooooooooooooo video : "+video);
String comm=request.getParameter("comment");
String nn=request.getParameter("uname");
System.out.println("kkkkkkkkkkkkkkk comment : "+comm);
System.out.println("kkkkkkkkkkkkkkk user name : "+nn);
%>
<%

if(commentobj.check_comment())
{
out.println("<font face='Arial, Helvetica, sans-serif' size='+2' color='blue'>Your Comment is successfully inserted...</font>");
//RequestDispatcher dispatcher = request.getRequestDispatcher("showComment.jsp");
		//dispatcher.include(request, response);       
		//response.sendRedirect("showVedio.jsp");
}
%><br><font face="Arial, Helvetica, sans-serif" size="-1">
<a href="javascript:history.back()">back</a></font>
</body>
</html>