<!-- CREATED BY SEYIT ARAR -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ page errorPage="../fehlermeldung/fehlerausgabe.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="../jspfs/head.jspf" %>
	<title>Kategorie Hinzufügen</title>
</head>
<body>

<!-- Kopfzeile -->
<nav>
<ul>
	<li><img src="../img/logo.png" alt="Logobild" width="35" height="42"></li>
	<li><h1>Kategorie hinzufügen</h1></li>
	<li><a href="../hauptseiteservlet">Zurück zur Hauptseite</a></li>
</ul>
</nav>

<!-- Text -->
<main>
	<form method="post" action="../kategoriehinzufuegenservlet" enctype="multipart/form-data">
		<fieldset><legend>Kategorie hinzufügen</legend>
			<div>
				<label for="kategorieId">Kategorie-Name:</label>
				<input type="text" name="kategorieName" id="kategorieId" placeholder="Kategorie-Name" required>
			</div>
			<div>
				<label for="icon">Kategorie-Icon:</label>
				<input class="bild" type="file" name="kategorieBild" id="kategorieBild_id" accept="image/*" required>
			</div>
			<div class="buttons">
				<button type="submit">Hinzufügen</button>
			</div>
		</fieldset>
	</form>
</main>

<!-- Footer -->
<%@ include file="../jspfs/footer.jspf" %>

</body>
</html>