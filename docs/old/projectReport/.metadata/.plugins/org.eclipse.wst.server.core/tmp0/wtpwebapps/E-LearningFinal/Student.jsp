<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1"><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="admin.jsp" class="">Admin Dashboard</a>
  <a href="nev_class.jsp">Classes</a>
<a href="Student.jsp">ADD Student</a>
  <a href="Asm.jsp"> All Student</a>
 <a href="AllTeacher.jsp">All Teacher</a>
 <a href="Assessment.jsp">Assessment</a>
 <a href="Context.jsp">Context</a> 
  <a href="index.jsp">Logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>




       
        <form method="post" action="Register">
        Name:<input type="text" name="name" /><br/>
        Email ID:<input type="text" name="email" /><br/>
        phone:<input type="text" name="phone" /><br/>

       
        course:<input type="text" name="course" /><br/>
 
        <input type="submit" value="register" />
        </form>
    </body>
</html>