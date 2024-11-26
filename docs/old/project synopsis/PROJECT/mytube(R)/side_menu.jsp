<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">

#coolmenu{
border: 1px solid black;
border-bottom-width: 0;
width: 170px;
background-color: #E6E6E6;
}

* html #coolmenu{ /*IE only rule, to negate the padding below IE includes in menu width.*/
width: 164px;
}

#coolmenu a{
font: bold 13px Verdana;
padding: 2px;
padding-left: 4px;
display: block;
width: 100%;
color: black;
text-decoration: none;
border-bottom: 1px solid gray;
}

html>body #coolmenu a{ /*Non IE rule*/
width: auto;
}

#coolmenu a:hover{
background-color: azure;
color: orange;
}

</style>
</head>

<body>

<div id="coolmenu">
<a href="About_us.jsp">About Us</a>
<a href="Copyright.jsp">Copyright</a>
<a href="Contact_us.jsp">Contact Us</a>
<a href="Advertising.jsp">Advertising</a>
<a href="Term&Condi.jsp">Terms & Conditions</a>
<a href="Help.jsp">Help</a>
</div>
</body>
</html>
