<!-- CREATED BY MARK MALDONADO -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<base href="${pageContext.request.requestURI }" />
	<link rel="stylesheet" type="text/css" href="../style/style.css" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Fehlerseite</title>
</head>
<body>

<!-- Kopfzeile -->
<nav>
<ul>
	<li><img src="../img/logo.png" alt="Logobild" width="35" height="42"></li>
	<li><h1>Fehlerausgabe</h1></li>
	<li><a href="../hauptseiteservlet">Zurück zur Hauptseite</a></li>
</ul>
</nav>

<!-- Fehlerausgabe -->
<main>
	<h2>Es ist ein Fehler aufgetreten!</h2>
	<br>Bitte benachrichtigen Sie den Web-Administrator unter <b>admin@shop-war.org</b>.
	<br>Die Fehlermeldung lautet: ${pageContext.exception}
	<p><b>Stack trace:</b>
		<c:forEach var = "trace" items = "${pageContext.exception.stackTrace}">
			<br>${trace}
		</c:forEach>
	</p>
</main>
	
<!-- Footer -->
<%@ include file="../jspfs/footer.jspf" %>

</body>
</html>