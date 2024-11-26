<jsp:useBean id="searchobj" class="dbbean.SearchBean" scope="session"/>
<jsp:setProperty name="searchobj" property="*"/>
<%@page import="java.util.*"%>

<%
if(searchobj.check())
{
  Set searched_video=searchobj.getSearchedVideoList();

	Iterator vtr=searched_video.iterator();
	out.println(searched_video.size()+" Videos r found......<br>");
	while(vtr.hasNext())
	{
		out.println(vtr.next()+"<br>");
	}
	

}
else
{
out.println("Sorry....No video is found...");
}
//response.sendRedirect("search_ok.jsp");
//else
//response.sendRedirect("search_err.jsp");
%>

