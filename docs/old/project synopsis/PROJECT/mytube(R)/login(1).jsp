<jsp:useBean id="loginobj" class="dbbean.LoginBean" scope="session"/>
<jsp:setProperty name="loginobj" property="*"/>
<%
if(loginobj.check())
response.sendRedirect("welcome.jsp");
else
response.sendRedirect("index.jsp");
%>