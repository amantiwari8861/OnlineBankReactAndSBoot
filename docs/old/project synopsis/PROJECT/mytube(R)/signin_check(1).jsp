<jsp:useBean id="loginobj" class="dbbean.SignInBean" scope="session"/>
<jsp:setProperty name="loginobj" property="*"/>
<%
if(loginobj.check())
{
response.sendRedirect("index.jsp");
session.setAttribute("name",loginobj.getName());
}
else
response.sendRedirect("index.jsp");
%>