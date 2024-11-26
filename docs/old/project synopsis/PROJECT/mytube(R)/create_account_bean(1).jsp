<jsp:useBean id="regobj" class="dbbean.CreateAccountBean" scope="session"/>
<jsp:setProperty name="regobj" property="*"/>
<%
if(regobj.insert())
{
response.sendRedirect("Conform_create_ac.jsp");
}
else
{
//response.sendRedirect("createAccount.jsp");
out.println("user already exist plz login");
}
%>

<body>

<SCRIPT language="JavaScript">
			location.href="signIn.jsp";
            alert("User Already exist plz login User");
			
			</SCRIPT>
</body>