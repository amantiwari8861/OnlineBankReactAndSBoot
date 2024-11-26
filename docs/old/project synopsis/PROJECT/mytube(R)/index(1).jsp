
<jsp:include page="header-signin.jsp"/>
<jsp:include page="vedio-sharing.jsp"/>
<%
String nm=(String)session.getAttribute("name");
if(nm==null)
{
%>
<jsp:include page="main-list.jsp"/>
<%
}
else
{
%>
<jsp:include page="main-list1.jsp"/>
<%
}
%>
<jsp:include page="footer.jsp"/>
