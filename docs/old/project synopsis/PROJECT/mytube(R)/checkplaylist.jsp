
<jsp:useBean id="searchobj" class="dbbean.SearchBean" scope="session"/>
<jsp:setProperty name="searchobj" property="*"/>

<%@page import="java.util.*"%>

<%@ page import="java.io.*"%>
<%

if(searchobj.check())
{        session.setAttribute("searchedVideo",searchobj.getSearchedVideoList());
		RequestDispatcher dispatcher = request.getRequestDispatcher("Controller");
		dispatcher.forward(request, response);
		//response.sendRedirect("Controller");
}
else
{
%>
<jsp:forward page="NotFoundVideo.jsp"/>
<%
}
%>













