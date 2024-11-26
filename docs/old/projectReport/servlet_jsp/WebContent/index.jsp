<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/normalize.css">
<link href='http://fonts.googleapis.com/css?family=Nunito:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="main.css">
</head>
<body>

	<form action="SaveServlet" method="post">

		<h1>Register Employee</h1>

		<fieldset>
			<legend>
				<span class="number">1</span>Your basic info
			</legend>
			<label for="name">Name:</label> <input type="text" id="name" name="name"> 
			<label for="email">Email:</label> <input	type="email" id="u_email" name="email"> 
			<label for="password">Password:</label> <input type="password"	id="password" name="password">
				 <label for="state">State:</label> <input	type="text" id="state" name="state"> 
				
				
		</fieldset>

		<!-- 
		<fieldset>
			<label for="job">Job Role:</label> <select id="job" name="state">
				<optgroup label="Web">
					<option value="frontend developer">Front-End Developer</option>
					<option value="php developor">Java Developer</option>
					<option value="php developor">PHP Developer</option>
					<option value="python developer">Python Developer</option>
					<option value="rails developer">Rails Developer</option>
					<option value="web designer">Web Designer</option>
					<option value="WordPress developer">WordPress Developer</option>
				</optgroup>
				<optgroup label="Mobile">
					<option value="Android developer">Androild Developer</option>
					<option value="iOS developer">iOS Developer</option>
					<option value="mobile designer">Mobile Designer</option>
				</optgroup>
				<optgroup label="Business">
					<option value="business owner">Business Owner</option>
					<option value="freelancer">Freelancer</option>
				</optgroup>
				<optgroup label="Other">
					<option value="secretary">Secretary</option>
					<option value="maintenance">Maintenance</option>
				</optgroup>
			</select>
		</fieldset>
		 --><button type="submit">Save Details</button>
	</form>
<a href="ViewServlet">view employees</a>

</body>
</html>