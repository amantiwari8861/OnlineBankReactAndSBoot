<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
a {font-family : Arial; Font-size : 12px; text-decoration : none}
a:link {color : #0000FF}
a:visited {color : #0000FF}
a:active {color : #0000FF}
a:hover {color : #0000FF}
</style>
<style type="text/css">
 .MyLink { COLOR: white; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }
 </style>

 <script>
  function change()
  {
   var ind=eval(document.f1.h1.value);
	switch(ind)
	 {
	   case 0 : document.img.src="img/veer.jpg";
	             break;
		case 1 : document.img.src="img/vertical_panaromic.jpg";
	             break;
		case 2 : document.img.src="img/silent_hill.jpg";
	             break;
		case 3 : document.img.src="img/Arjun Rampal.jpg";
	             break;
		}
	document.f1.h1.value=ind+1;
	if(document.f1.h1.value==4)
	{
	 document.f1.h1.value=0;
	  }
	}
	setInterval("change()",2500);
  </script>

  <script>
  function change1()
  {
   var ind1=eval(document.f1.h2.value);
	switch(ind1)
	 {
	   case 0 : document.img1.src="img/lord_of_the_rings_1.jpg";
	             break;
		case 1 : document.img1.src="img/lord_of_the_rings_2.jpg";
	             break;
		case 2 : document.img1.src="img/lord_of_the_rings_4.jpg";
	             break;
		case 3 : document.img1.src="img/lord_of_the_rings_5.jpg";
	             break;
		case 4 : document.img1.src="img/lord_of_the_rings_6.jpg";
	             break;

		case 5 : document.img1.src="img/lord_of_the_rings_7.jpg";
	             break;
		 case 6 : document.img1.src="img/lord_of_the_rings_3.jpg";
	             break;
		}
	document.f1.h2.value=ind1+1;
	if(document.f1.h2.value==7)
	{
	 document.f1.h2.value=0;
	  }
	}
	setInterval("change1()",2000);
  </script>

</head>

<body background="img/background.jpg">
<form name="f1">
  <table width="100%" height="100%" border="0">
    <tr>
      <td height="29" colspan="4"><hr>
          <font face="Arial, Helvetica, sans-serif" size="3" color="#FF3333"> <b>Sports</b></font></td>
      <td width="100" rowspan="4"><center>
          <img src="img/Arjun Rampal.jpg" width=226 height=373 name="img">
                    </center>
          <input type="hidden" name="h1" value="0" />
      </td>
    </tr>
    <tr>
	 <td width="225" height="163"><div align="left"><a href="run1.jsp?name=sachin 200&title=Sachin 200"><img src="thumbnails/sachin 200.jpg" width="160" height="130"></a>&nbsp;<br><a href="run1.jsp?name=sachin 200&title=Sachin 200" class="MyLink">Sachin 200</a></div></td>
      <td width="225" height="163"><div align="left"><a href="run1.jsp?name=yuvi&title=Yuvi"><img src="thumbnails/yuvi.jpg" width="160" height="130"></a>&nbsp;<br><a href="run1.jsp?name=yuvi&title=yuvi sixes" class="MyLink">Yuvi sixes</a></div></td>
      <td width="225" height="163"><div align="left"><a href="run1.jsp?name=best catch of david hussy&title=Amazing Catches"><img src="thumbnails/best catch of david hussy.jpg" width="160" height="130"></a>&nbsp;<br><a href="run1.jsp?name=best%20catch%20of%20david%20hussy&title=Amazing Catches" class="MyLink">Amazing Catches</a></div></td>
      <td width="225" height="163"><div align="left"><a href="run1.jsp?name=dhoni&title=Dhoni"><img src="thumbnails/dhoni.jpg" width="160" height="130"></a>&nbsp;<br><a href="run1.jsp?name=dhoni&title=Dhoni" class="MyLink">Dhoni</a></div></td>
	 
    </tr>
    <tr>
      <td height="23" colspan="4"><hr>
          <font face="Arial, Helvetica, sans-serif" size="3" color="#FF3333"><b>Bollywood </b></font></td>
    </tr>
    <tr>
	  <td height="152"><div align="left"><a href="run1.jsp?name=ji%20ne%20mera%20dil%20lutya&title=Jine mera dil lutya"><img src="thumbnails/ji%20ne%20mera%20dil%20lutya.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=ji%20ne%20mera%20dil%20lutya&title=Jine mera dil lutya" class="MyLink">Jine mera dil lutya</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=ritik n rani&title=Hritik & Rani"><img src="thumbnails/ritik n rani.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=ritik n rani&title=Hritik & Rani" class="MyLink">Hritik&Rani</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=tere%20liye&title=Tere liye"><img src="thumbnails/tere%20liye.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=tere%20liye&title=Tere liye" class="MyLink">Tere liye</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=tera%20hone%20laga%20hoon&title=Tera hone laga hoon"><img src="thumbnails/tera%20hone%20laga%20hoon.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=tera hone laga hoon&title=Tera hone laga hoon" class="MyLink">Tera hone laga hoon</a></div></td>
    </tr>
    <tr>
      <td height="39" colspan="4"><hr>
          <font face="Arial, Helvetica, sans-serif" size="3" color="#FF3333"><b>Comedy</b></font></td>
      <td rowspan="4"><img src="img/lord_of_the_rings_3.jpg" width=228 height=396 name="img1">
      <input type="hidden" name="h2" value="0" />      </td>
    </tr>
    <tr>
      <td height="152"><div align="left"><a href="run1.jsp?name=memecry in idian idol audition&title=Memecry in indian idol audition"><img src="thumbnails/memecry in idian idol audition.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=memecry in idian idol audition&title=Memecry in indian idol audition" class="MyLink">Memecry in indian idol audition</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=khyali on star one&title=Khyali on star one"><img src="thumbnails/khyali on star one.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=khyali on star one&title=Khyali on star one" class="MyLink">Khyali on star one</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=best of sunil pal&title=Best of sunil pal"><img src="thumbnails/best of sunil pal.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=best of sunil pal&title=Best of sunil pal" class="MyLink">Best of sunil pal</a></div></td>
      <td height="152"><div align="left"><a href="run1.jsp?name=jony lever stand up on sony&title=Jony lever stand up on sony"><img src="thumbnails/jony lever stand up on sony.jpg" width="160" height="130" border="0"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=jony lever stand up on sony&title=Jony lever stand up on sony" class="MyLink">Jony lever stand up on sony</a></div></td>
    </tr>
    <tr>
      <td height="39" colspan="4"><hr>
          <font face="Arial, Helvetica, sans-serif" size="3" color="#FF3333"><b>Dance</b></font> </td>
    </tr>
    <tr>
      <td height="155"><div align="left"><a href="run1.jsp?name=aishwrya&title=Dance"><img src="thumbnails/aishwrya.jpg" width="160" height="130"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=aishwrya&title=Dance" class="MyLink">Dance</a></div></td>
      <td height="155"><div align="left"><a href="run1.jsp?name=dance india dance 1&title=Dance India Dance"><img src="thumbnails/dance india dance 1.jpg" width="160" height="130"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=dance%20india%20dance%201&title=Dance India Dance" class="MyLink">Dance India Dance</a></div></td>
      <td height="155"><div align="left"><a href="run1.jsp?name=dance india dance 2&title=Dance India Dance2"><img src="thumbnails/dance india dance 2.jpg" width="160" height="130"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=dance%20india%20dance%202&title=Dance India Dance2" class="MyLink">Dance India Dance2</a></div></td>
      <td height="155"><div align="left"><a href="run1.jsp?name=hritik&title=Hritik"><img src="thumbnails/hritik.jpg" width="160" height="130"></a>&nbsp;&nbsp;&nbsp;<br><a href="run1.jsp?name=hritik&title=Hritik" class="MyLink">Hritik</a></div></td>
    </tr>
  </table>
</form>
</body>
</html>
