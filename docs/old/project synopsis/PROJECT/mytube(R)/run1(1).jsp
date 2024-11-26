
<jsp:useBean id="showcommentobj1" class="dbbean.ShowComment_Bean" scope="session"/>
<jsp:setProperty name="showcommentobj1" property="*"/>
<%@page import="java.util.*"%>

<jsp:include page="header-signin.jsp"/>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%!
ResultSet rs=null;
String name1=null;
%>

<body background="img/background.jpg">
<%
String name=request.getParameter("name");
String title=request.getParameter("title");
name1=(String)session.getAttribute("name");
//session.setAttribute("video-name",name);
//System.out.println("show Video name :"+video);
showcommentobj1.setVideo(name);
%>
<form action="check_comment.jsp">

<table width="100%" cellspacing="0">
<tr>
<td colspan="4">
<font face="Arial, Helvetica, sans-serif" color="#333333"><h1><%=name%></h1></h1></h1></font>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="584" height="402" align="Default*">
	<param name="allowScriptAccess" value="sameDomain">
	<param name="movie" value="flv-files/<%=name%>.swf">
	<param name="quality" value="high">
	<param name="showControls" value="true">
	<param name="bgcolor" value="#ffffff">
	<param name="allowFullScreen" value="true">
	<embed src="flv-files/<%=name%>.swf" showcontrols=1 quality="high"  align="middle"  bgcolor="#ffffff"  width="482" height="385" allowFullScreen="true" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">
</object>
</td>
<td width="325" height="163" rowspan="5"><div align="left"><a href="run1.jsp?name=<%=name%>&title=<%=title%>"><img src="thumbnails/<%=name%>.jpg" width="160" height="130"></a>&nbsp;<br><a href="run1.jsp?name=<%=name%>&title=<%=title%>" class="MyLink"><%=title%></a></div></td>
</tr>
<%
String nm=(String)session.getAttribute("name");
if(nm!=null)
{
%>
<input type="hidden" name="uname" value="<%=nm%>"/>
<input type="hidden" name="video" value="<%=name%>"/>
<tr>
  <td align="center"  valign="top"><b>Comments : </b></td>
  <td align="center"  valign="top">&nbsp;</td>
  <td align="center"  valign="top">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<tr>
  <td colspan="2" align="left" valign="top" ><textarea name="comment" cols="55" rows="6" ></textarea><br><br><input type="submit" value="Comment"></td>
  <td align="center"  valign="top">&nbsp;</td>
  <td>&nbsp;</td>
</tr>
<%
}
%>
<tr>
  <td width="209" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Client Name</font></td>
      <td width="208" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Date & Time </font></td>
      <td width="275" align="center" bgcolor="#CCFFFF" valign="top"><font face="Arial, Helvetica, sans-serif" size="-2">Comment </font></td>
  <td width="77">&nbsp;</td>
</tr>
  <%
 try
 {
rs=showcommentobj1.getCommentList();
System.out.println("kamal Result1 set :"+rs);
while(rs.next())
{
%>
<tr valign="top">
      <td height="29" valign="top" align="center"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(1)%></font></td>
      <td valign="top" align="center"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(2)%></font></td>
      <td  valign="top" align="center"><font face="Arial, Helvetica, sans-serif" size="-2"><%=rs.getString(4)%></font></td>
      <td></td>
  </tr>
    <%
}
}catch(Exception e){System.out.println("showComment : "+e);}
  %></table></form>
</body>
<jsp:include page="footer.jsp"/>
