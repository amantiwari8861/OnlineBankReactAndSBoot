<%@ page import="java.io.*"%>
<%
File f=new File(application.getRealPath("flv-files"));
File list[]=f.listFiles();
for(int i=0;i<list.length;i++)
{
System.out.println(i);
String name=list[i].getName();

System.out.println(name);
if(name.contains(".flv")||name.contains(".FLV"))
{
int index=name.indexOf('.');
name=name.substring(0,index);
%>
<br>
<a href="run.jsp?name=<%=name%>"><img src="thumbnails/<%=name%>.jpg" width="150"/></a>&nbsp&nbsp&nbsp
<a href="run.jsp?name=<%=name%>"><%=name%></a>

<%
}
}
%>
