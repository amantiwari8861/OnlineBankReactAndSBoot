<%
String name=request.getParameter("name");
session.setAttribute("video-name",name);
%>
<body bgcolor="#ffffff">
<font face="Arial, Helvetica, sans-serif" color="#333333"><h1><%=name%></h1></font>
<object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0" width="584" height="402" align="Default*">
	<param name="allowScriptAccess" value="sameDomain">
	<param name="movie" value="flv-files/<%=name%>.swf">
	<param name="quality" value="high">
	<param name="showControls" value="true">
	<param name="bgcolor" value="#ffffff">
	<param name="allowFullScreen" value="true">
	<embed src="flv-files/<%=name%>.swf" showcontrols=1 quality="high"  align="middle"  bgcolor="#ffffff"  width="482" height="385" allowFullScreen="true" allowScriptAccess="sameDomain" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer">
</object>
</body>
