
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML lang=en dir=ltr><HEAD><TITLE>MyTube - Broadcast Yourself.</TITLE>
<jsp:include page="header-signin.jsp"/>

<META http-equiv=Content-Type content="text/html; charset=utf-8"><!-- machid: sWkFSZzctYUFHdmdEb3FOMk9VSm9Lc2hyYTJpU1p1dmhjTUwwMkhnb2RTVFd4QUthWm40NFRn --><LINK 
id=www-core-css href="createAccount_files/www-core-vflnkVOEZ.css" 
rel=stylesheet><LINK href="createAccount_files/www-the-rest-vflra0K1C.css" 
rel=stylesheet><LINK href="createAccount_files/login-vfl32pjia.css" 
type=text/css rel=stylesheet><LINK title="MyTube Video Search" 
href="#" 
type=application/opensearchdescription+xml rel=search><LINK 
href="http://s.ytimg.com/yt/favicon-vflZlzSbU.ico" type=image/x-icon 
rel=icon><LINK href="#" 
type=image/x-icon rel="shortcut icon">
<META content="Share your videos with friends, family, and the world" 
name=description>
<META content="video, sharing, camera phone, video phone, free, upload" 
name=keywords>
<script language="javascript" src="js/gen_validatorv31.js"></script>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
<script>
function getMin()
{
	var field3=document.signupForm.pass1.value.length;
	if(field3<6)
	{
		alert("You have to give minimum 6 characters...");
		document.signupForm.pass1.focus();
		document.signupForm.pass1.value="";
		return false;

	}
	return true;
}


function same()
{
	var field1=document.signupForm.pass1.value;
	var field2=document.signupForm.pass2.value;
	if(field1!=field2)
	{
		alert("Both passwords are not match...");
	document.signupForm.pass1.focus();
	document.signupForm.pass1.value="";
	document.signupForm.pass2.value="";
	return false;
	}
	return true;
}
</script>
</HEAD>
<BODY class="date-20101204 en_US ltr is-english" dir=ltr background="img/background.jpg">



<H1 class=main-header>Get started with your account</H1>
<table width="100%" border="0">
  <tr>
    <td><hr></td>
  </tr>
</table>
<DIV class=signup-main>
<DIV id=pagination-top 
style="PADDING-RIGHT: 0pt; PADDING-LEFT: 0pt; PADDING-BOTTOM: 5px; PADDING-TOP: 25px; TEXT-ALIGN: right"></DIV>
<TABLE  cellPadding=0 cellSpacing=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="16%"></TD>
    <TD vAlign=top width="10%"></TD>
    <TD width="74%" vAlign=top>
      <DIV id=suSignupDiv>
      <DIV class=signup-outer-frame 
      style="BORDER-RIGHT: #c3d9ff 0px solid; BORDER-TOP: #c3d9ff 0px solid; MARGIN-LEFT: 0%; BORDER-LEFT: #c3d9ff 0px solid; MARGIN-RIGHT: 0%; BORDER-BOTTOM: #c3d9ff 0px solid">
      <DIV class=signup-inner-frame>
      <FORM name="signupForm" action="create_account_bean.jsp" method="post" > 
      <TABLE class=signup-table 
      style="BORDER-RIGHT: #e8eefa 1px solid; BORDER-TOP: #e8eefa 1px solid; BORDER-LEFT: #e8eefa 1px solid; BORDER-BOTTOM: #e8eefa 1px solid; BACKGROUND-COLOR: #e8eefa" 
      cellSpacing=0 cellPadding=4>
        <TBODY>
        <TR>
          <TD width="78">&nbsp;</TD>
          <TD width="347">&nbsp;</TD></TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=signUpEmail><SPAN 
            class=nowrap>Email Address:</SPAN> </LABEL></TD>
          <TD class=formFieldSmall width=347><INPUT type="email" name="email" size="40"> </TD></TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=username><SPAN 
            class=nowrap>Username:</SPAN> </LABEL></TD>
          <TD class=formFieldSmall>
            <TABLE cellSpacing=0 cellPadding=2 border=0>
              <TBODY>
              <TR>
                <TD style="PADDING-LEFT: 0px" vAlign=top><input type="textfield" name="name" size="40"><DIV id=suggest_username style="DISPLAY: none"></DIV>
                    </TD></TR></TBODY></TABLE></TD></TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=countrySelect><SPAN 
            class=nowrap>Password :</SPAN> </LABEL></TD>
          <TD class=formFieldSmall><input type="password" name="pass1" value="" onBlur="getMin()"> </TD>
        </TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=postal_code><SPAN 
            class=nowrap>Confirm Password:</SPAN> </LABEL></TD>
          <TD class=formFieldSmall><input type="password" name="pass2" value="" onBlur="same()">  </TD>
        </TR>
		  <TR>
		  		  </TR>
        <TR>
          <TD class=loginFormLabel><SPAN class=nowrap>Date of Birth:</SPAN> 
</TD>
          <TD class=formFieldSmall><SELECT class=birthday_mon 
            name="birthday_mon"> <OPTION value=0 selected>---</OPTION> <OPTION 
              value=1>January</OPTION> <OPTION value=2>February</OPTION> <OPTION 
              value=3>March</OPTION> <OPTION value=4>April</OPTION> <OPTION 
              value=5>May</OPTION> <OPTION value=6>June</OPTION> <OPTION 
              value=7>July</OPTION> <OPTION value=8>August</OPTION> <OPTION 
              value=9>September</OPTION> <OPTION value=10>October</OPTION> 
              <OPTION value=11>November</OPTION> <OPTION 
              value=12>December</OPTION></SELECT> <SELECT class=birthday_day 
            name="birthday_day"> <OPTION value=0 selected>---</OPTION> <OPTION 
              value=1>1</OPTION> <OPTION value=2>2</OPTION> <OPTION 
              value=3>3</OPTION> <OPTION value=4>4</OPTION> <OPTION 
              value=5>5</OPTION> <OPTION value=6>6</OPTION> <OPTION 
              value=7>7</OPTION> <OPTION value=8>8</OPTION> <OPTION 
              value=9>9</OPTION> <OPTION value=10>10</OPTION> <OPTION 
              value=11>11</OPTION> <OPTION value=12>12</OPTION> <OPTION 
              value=13>13</OPTION> <OPTION value=14>14</OPTION> <OPTION 
              value=15>15</OPTION> <OPTION value=16>16</OPTION> <OPTION 
              value=17>17</OPTION> <OPTION value=18>18</OPTION> <OPTION 
              value=19>19</OPTION> <OPTION value=20>20</OPTION> <OPTION 
              value=21>21</OPTION> <OPTION value=22>22</OPTION> <OPTION 
              value=23>23</OPTION> <OPTION value=24>24</OPTION> <OPTION 
              value=25>25</OPTION> <OPTION value=26>26</OPTION> <OPTION 
              value=27>27</OPTION> <OPTION value=28>28</OPTION> <OPTION 
              value=29>29</OPTION> <OPTION value=30>30</OPTION> <OPTION 
              value=31>31</OPTION></SELECT> <SELECT class=birthday_yr 
            name="birthday_yr"> <OPTION value=0 selected>---</OPTION> <OPTION 
              value=2010>2010</OPTION> <OPTION value=2009>2009</OPTION> <OPTION 
              value=2008>2008</OPTION> <OPTION value=2007>2007</OPTION> <OPTION 
              value=2006>2006</OPTION> <OPTION value=2005>2005</OPTION> <OPTION 
              value=2004>2004</OPTION> <OPTION value=2003>2003</OPTION> <OPTION 
              value=2002>2002</OPTION> <OPTION value=2001>2001</OPTION> <OPTION 
              value=2000>2000</OPTION> <OPTION value=1999>1999</OPTION> <OPTION 
              value=1998>1998</OPTION> <OPTION value=1997>1997</OPTION> <OPTION 
              value=1996>1996</OPTION> <OPTION value=1995>1995</OPTION> <OPTION 
              value=1994>1994</OPTION> <OPTION value=1993>1993</OPTION> <OPTION 
              value=1992>1992</OPTION> <OPTION value=1991>1991</OPTION> <OPTION 
              value=1990>1990</OPTION> <OPTION value=1989>1989</OPTION> <OPTION 
              value=1988>1988</OPTION> <OPTION value=1987>1987</OPTION> <OPTION 
              value=1986>1986</OPTION> <OPTION value=1985>1985</OPTION> <OPTION 
              value=1984>1984</OPTION> <OPTION value=1983>1983</OPTION> <OPTION 
              value=1982>1982</OPTION> <OPTION value=1981>1981</OPTION> <OPTION 
              value=1980>1980</OPTION> <OPTION value=1979>1979</OPTION> <OPTION 
              value=1978>1978</OPTION> <OPTION value=1977>1977</OPTION> <OPTION 
              value=1976>1976</OPTION> <OPTION value=1975>1975</OPTION> <OPTION 
              value=1974>1974</OPTION> <OPTION value=1973>1973</OPTION> <OPTION 
              value=1972>1972</OPTION> <OPTION value=1971>1971</OPTION> <OPTION 
              value=1970>1970</OPTION> <OPTION value=1969>1969</OPTION> <OPTION 
              value=1968>1968</OPTION> <OPTION value=1967>1967</OPTION> <OPTION 
              value=1966>1966</OPTION> <OPTION value=1965>1965</OPTION> <OPTION 
              value=1964>1964</OPTION> <OPTION value=1963>1963</OPTION> <OPTION 
              value=1962>1962</OPTION> <OPTION value=1961>1961</OPTION> <OPTION 
              value=1960>1960</OPTION> <OPTION value=1959>1959</OPTION> <OPTION 
              value=1958>1958</OPTION> <OPTION value=1957>1957</OPTION> <OPTION 
              value=1956>1956</OPTION> <OPTION value=1955>1955</OPTION> <OPTION 
              value=1954>1954</OPTION> <OPTION value=1953>1953</OPTION> <OPTION 
              value=1952>1952</OPTION> <OPTION value=1951>1951</OPTION> <OPTION 
              value=1950>1950</OPTION> <OPTION value=1949>1949</OPTION> <OPTION 
              value=1948>1948</OPTION> <OPTION value=1947>1947</OPTION> <OPTION 
              value=1946>1946</OPTION> <OPTION value=1945>1945</OPTION> <OPTION 
              value=1944>1944</OPTION> <OPTION value=1943>1943</OPTION> <OPTION 
              value=1942>1942</OPTION> <OPTION value=1941>1941</OPTION> <OPTION 
              value=1940>1940</OPTION> <OPTION value=1939>1939</OPTION> <OPTION 
              value=1938>1938</OPTION> <OPTION value=1937>1937</OPTION> <OPTION 
              value=1936>1936</OPTION> <OPTION value=1935>1935</OPTION> <OPTION 
              value=1934>1934</OPTION> <OPTION value=1933>1933</OPTION> <OPTION 
              value=1932>1932</OPTION> <OPTION value=1931>1931</OPTION> <OPTION 
              value=1930>1930</OPTION> <OPTION value=1929>1929</OPTION> <OPTION 
              value=1928>1928</OPTION> <OPTION value=1927>1927</OPTION> <OPTION 
              value=1926>1926</OPTION> <OPTION value=1925>1925</OPTION> <OPTION 
              value=1924>1924</OPTION> <OPTION value=1923>1923</OPTION> <OPTION 
              value=1922>1922</OPTION> <OPTION value=1921>1921</OPTION> <OPTION 
              value=1920>1920</OPTION> <OPTION value=1919>1919</OPTION> <OPTION 
              value=1918>1918</OPTION> <OPTION value=1917>1917</OPTION> <OPTION 
              value=1916>1916</OPTION> <OPTION value=1915>1915</OPTION> <OPTION 
              value=1914>1914</OPTION> <OPTION value=1913>1913</OPTION> <OPTION 
              value=1912>1912</OPTION> <OPTION value=1911>1911</OPTION> <OPTION 
              value=1910>1910</OPTION> <OPTION value=1909>1909</OPTION> <OPTION 
              value=1908>1908</OPTION> <OPTION value=1907>1907</OPTION> <OPTION 
              value=1906>1906</OPTION> <OPTION value=1905>1905</OPTION> <OPTION 
              value=1904>1904</OPTION> <OPTION value=1903>1903</OPTION> <OPTION 
              value=1902>1902</OPTION> <OPTION value=1901>1901</OPTION></SELECT> 
          </TD></TR>
        <TR>
          <TD class=loginFormLabel><SPAN class=nowrap>Gender:</SPAN> </TD>
          <TD class=formFieldSmall><INPUT id=male type=radio value=m 
            name="gender" checked><LABEL for=male>Male</LABEL> &nbsp; <INPUT id=female 
            type=radio value=f name="gender"><LABEL for=female>Female</LABEL> 
        </TD></TR>
        <TR>
          <TD>&nbsp;</TD>
          <TD><input name="image" type="image" src="img/create_button1.gif" ></TD>
        </TR>
        <TR>
          <TD>&nbsp;</TD>
          <TD>&nbsp;</TD></TR></TBODY></TABLE>
      </FORM></DIV></DIV></DIV></TD></TR></TBODY></TABLE>
</DIV>
	  
	  <script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("signupForm");
  frmvalidator.addValidation("name","req","Please enter your Name");
  frmvalidator.addValidation("name","maxlen=20",	"Max length for Name is 20");
  
  
  frmvalidator.addValidation("pass1","req","Please enter your Password...");
  frmvalidator.addValidation("pass1","maxlen=20",	"Max length for password is 20");
  

  frmvalidator.addValidation("pass2","req","Please enter your conform Password...");
  frmvalidator.addValidation("pass2","maxlen=20",	"Max length for conform password is 20");
  

  frmvalidator.addValidation("gender","req","Please enter your gender...");
  
  
    
  frmvalidator.addValidation("email","maxlen=50");
  frmvalidator.addValidation("email","req");
  frmvalidator.addValidation("email","email");
  
  frmvalidator.addValidation("birthday_mon","dontselect=0");
  frmvalidator.addValidation("birthday_day","dontselect=0");
  frmvalidator.addValidation("birthday_yr","dontselect=0");
 
</script>

<DIV class=clear></DIV>
</DIV>
<DIV class="hid passive editable" id=quicklist 
data-loaded-ajax-url="/list_ajax?action_get_quicklist=1" 
data-quicklist-ajax-url="/list_ajax?action_get_quicklist=1" 
data-active-ajax-url="" data-list-type="QL" data-list-id="">
<DIV id=quicklist-player-container>
<DIV id=quicklist-player-title></DIV>
<DIV id=quicklist-player></DIV></DIV>
</DIV>
<DIV id=shared-addto-menu style="DISPLAY: none">
<FORM action=/addto_ajax method=post>
<UL class=addto-menu>
  <LI><SPAN class="yt-uix-button-menu-item " 
  onclick=yt.www.addtomenu.saveToQueue(this);>Add to queue </SPAN>
  <LI><SPAN class="yt-uix-button-menu-item " onClick=""><A 
  href="https://www.google.com/accounts/ServiceLogin?uilel=3&amp;service=youtube&amp;passive=true&amp;continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26nomobiletemp%3D1%26hl%3Den_US%26next%3D%252Fcreate_account%253Fnext%253D%25252F&amp;hl=en_US&amp;ltmpl=sso">Sign 
  in</A> to add this to a playlist </SPAN>
  <LI class="yt-uix-button-menu-item addto-item addto-create-container" 
  style="DISPLAY: none"><INPUT class=addto-create-name size=25> 
</LI></UL></FORM></DIV>
<jsp:include page="footer.jsp"/>
</BODY></HTML>
