
<%@page import="java.util.*"%>

<%@ page import="java.io.*"%>
<%!
String name="",nm="";
Set search_video1;
%>
<table width="329" border="0">
<%
nm=(String)session.getAttribute("name");
search_video1=(Set)session.getAttribute("searchedVideo");
name=request.getParameter("name");
if(search_video1.size()!=0)
{        
	
	Iterator it=search_video1.iterator();
	while(it.hasNext())
	{
		name=(String)it.next();
		if(nm!=null)
			{
%>

	<tr>
			
			<td width="166" valign="bottom"><a href="showVedio.jsp?name=<%=name%>" class="MyLink"><img src="thumbnails/<%=name%>.jpg" width="160" height="130" border="0"/></a></td>
			<td width="153" valign="bottom"><a href="showVedio.jsp?name=<%=name%>" class="MyLink"><font face="Arial, Helvetica, sans-serif" size="-1"><%=name%></font></a></td>
			
	</tr>
<%
			}
			else
			{
			%>
				<tr>
			
			<td width="166" valign="bottom"><a href="showVedio1.jsp?name=<%=name%>" class="MyLink"><img src="thumbnails/<%=name%>.jpg" width="160" height="130" border="0"/></a></td>
			<td width="153" valign="bottom"><a href="showVedio1.jsp?name=<%=name%>" class="MyLink"><font face="Arial, Helvetica, sans-serif" size="-1"><%=name%></font></a></td>
			
	</tr>

			<%
			}
	}
}
else
{
%>
<jsp:forward page="NotFoundVideo.jsp"/>
<%
}
%>
</table>













