<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>

<html>

<head>
<style type="text/css">
 .MyLink { COLOR: blue; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }
 </style>
<title>Pagination</title>
</head>
<body background="img/background.jpg">


<%!
String name="";
List pageNumbers,list;
%>
<%
	list = (List) session.getAttribute("empDetails");

	pageNumbers = (List) session.getAttribute("pages");
%>

<table width="329" border="0">
	
	<%
		Iterator it=list.iterator();
		while(it.hasNext()){
		name=(String)it.next();
	%>
	<tr>
		
		<td width="166" valign="bottom"><a href="showVedio.jsp?name=<%=name%>" class="MyLink"><img src="thumbnails/<%=name%>.jpg" width="160" height="130" border="0"/></a></td>
		<td width="153" valign="bottom"><a href="showVedio.jsp?name=<%=name%>" class="MyLink"><font face="Arial, Helvetica, sans-serif" size="-1"><%=name%></font></a></td>
		
	</tr>
	<%
		}
	%>

	<tr>
		<td colspan="4" align="right">
		<form method="get" action="dbbean.Controller">
		<table>
			<tr>
				<%
					for (int i = 0; i < pageNumbers.size(); i++) {
					System.out.println("test page no:"+i);
				%>
								<td valign="bottom"><br><a href="Controller?pageNumber=<%=pageNumbers.get(i)%>" class="MyLink"><font face="Arial, Helvetica, sans-serif" size="-1"><%=pageNumbers.get(i)%></font></a></td>
				<%
					}
				%>
			</tr>
		</table>
		</form>
		</td>
	</tr>
	
</table>


</body>
</html>