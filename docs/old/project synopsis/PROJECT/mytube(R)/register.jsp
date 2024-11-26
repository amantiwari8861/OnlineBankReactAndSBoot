<jsp:useBean id="regobj" class="dbbean.RegisterBean" scope="session"/>
<jsp:setProperty name="regobj" property="*"/>
<%
if(regobj.insert())
response.sendRedirect("index.jsp?msg=success");
else
response.sendRedirect("register.html");
%>