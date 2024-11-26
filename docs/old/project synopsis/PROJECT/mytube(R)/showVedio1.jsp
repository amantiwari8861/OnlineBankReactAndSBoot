<jsp:useBean id="showcommentobj1" class="dbbean.ShowComment_Bean" scope="session"/>
<jsp:setProperty name="showcommentobj1" property="*"/>
<%@page import="java.util.*"%>



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
showcommentobj1.setVideo(video);
//video=(String)session.getAttribute("video-name");
%>


<form>
<table width="100%" border="0">
  <tr>
      <td colspan="2" valign="top"><jsp:include page="run.jsp"/></td>
      <td rowspan="3">&nbsp;</td>
      <td width="61" rowspan="3" valign="top"><jsp:include page="checkplaylist11.jsp">
	  											<jsp:param name="name" value="<%=video%>"/>
												</jsp:include>
		</td>
  </tr>
  <tr>
    <td width="308" height="48" valign="top"><table cellspacing="0" width="432">
	  <tr valign="top">
      <td width="63" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Client Name</font></td>
      <td width="100" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Date & Time </font></td>
      <td width="134" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Comment </font></td>
      
  </tr>
	  <%
 try
 {
rs=showcommentobj1.getCommentList();
System.out.println("kamal Result set :"+rs);
while(rs.next())
{
%>
    <tr valign="top">
      <td height="29" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(1)%></font></td>
      <td valign="top"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(2)%></font></td>
      <td  valign="top"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(4)%></font></td>
      
  </tr>
    <%
}
}catch(Exception e){System.out.println("showComment : "+e);}
  %>
	  </table></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
   
  </tr>
</table>
</form>
</body>
<jsp:include page="footer.jsp"/>
</html>
