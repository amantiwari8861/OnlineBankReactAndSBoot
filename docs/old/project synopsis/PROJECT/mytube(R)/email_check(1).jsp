<jsp:useBean id="emailobj" class="dbbean.EmailBean" scope="session"/>
<jsp:setProperty name="emailobj" property="*"/>
<%
if(emailobj.check())
response.sendRedirect("email_ok.jsp");
else
response.sendRedirect("email_err.jsp");
%>