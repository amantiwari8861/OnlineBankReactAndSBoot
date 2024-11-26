<jsp:useBean id="commentobj" class="dbbean.Comment_Bean" scope="request"/>
<jsp:setProperty name="commentobj" property="*"/>
<%@page import="java.util.*"%>

<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>
<%!
ResultSet rs=null;
%>
<table width="432" border="0" cellspacing="0">
  <tr>
    <td width="87" align="center" bgcolor="#CCFFFF">Client Name</td>
    <td width="151" align="center" bgcolor="#CCFFFF">Date & Time </td>
    <td width="188" align="center" bgcolor="#CCFFFF">Comment </td>
    
  </tr>
 <%
 try
 {
rs=commentobj.getCommentList();
System.out.println(rs);
while(rs.next())
{
%>
  <tr>
    <td><%=rs.getString(1)%></td>
    <td><%=rs.getString(2)%></td>
    <td><%=rs.getString(4)%></td>
    
  </tr>
  <%
}
}catch(Exception e){System.out.println("showComment : "+e);}
  %>
</table>

