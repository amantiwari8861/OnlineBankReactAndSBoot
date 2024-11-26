<jsp:useBean id="showcommentobj" class="dbbean.ShowComment_Bean" scope="session"/>
<jsp:setProperty name="showcommentobj" property="*"/>
<%@page import="java.util.*"%>

<%@ page import="java.io.*"%>


<html>
<jsp:include page="header-signin.jsp"/>
<head>

<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body background="img/background.jpg">
<%!
String name="",video="";
%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%!
ResultSet rs=null;
%>


<%
video=request.getParameter("name");
name=(String)session.getAttribute("name");
System.out.println("show Video name :"+video);
showcommentobj.setVideo(video);
//video=(String)session.getAttribute("video-name");
%>
<form action="check_comment.jsp">
<input type="hidden" name="uname" value="<%=name%>">
<input type="hidden" name="video" value="<%=video%>">
<table width="100%" border="0">
  <tr>
    <td colspan="3" valign="top"><jsp:include page="run.jsp"/></td>
	<td width="30" rowspan="4">&nbsp;</td>
    <td width="87" rowspan="4"><div style="width:auto"><jsp:include page="checkplaylist11.jsp"/></div></td>
    
  </tr>
  <tr>
  <td colspan="2" valign="top"><b>Comments :</b><br><br><textarea name="comment" cols="55" rows="6" ></textarea><br><br><input type="submit" value="Comment"></td>
    
  </tr>
  <tr>
  <td width="648" valign="top"><table width="100%" border="0" cellspacing="0">
  <tr>
    <td width="87" align="center" bgcolor="#CCFFFF"><font face="Arial, Helvetica, sans-serif" size="-2">Client Name</font></td>
    <td width="151" align="center" bgcolor="#CCFFFF"><font face="Arial, Helvetica, sans-serif" size="-2">Date & Time </font></td>
    <td width="188" align="center" bgcolor="#CCFFFF"><font face="Arial, Helvetica, sans-serif" size="-2">Comment </font></td>
    
  </tr>
 <%
 try
 {
rs=showcommentobj.getCommentList();
System.out.println("kamal Result set :"+rs);
while(rs.next())
{
%>
  <tr><font face="Arial, Helvetica, sans-serif" size="-2">
    <td><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(1)%></font></td>
    <td><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(2)%></font></td>
    <td><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(4)%></font></td>
    
  </font></tr>
  <%
}
}catch(Exception e){System.out.println("showComment : "+e);}
  %>
</table>
</td>
    
  <td width="1" valign="top">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="2" valign="top"></td>
    
  </tr>
</table>
<br>

</form><br>


</body>
<jsp:include page="footer.jsp"/>
</html>
