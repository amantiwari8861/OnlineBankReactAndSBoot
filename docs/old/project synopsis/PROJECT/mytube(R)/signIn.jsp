<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0224)https://www.google.com/accounts/ServiceLogin?uilel=3&service=youtube&passive=true&continue=http%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26nomobiletemp%3D1%26hl%3Den_US%26next%3D%252F&hl=en_US&ltmpl=sso -->
<HTML><HEAD><TITLE>MyTube</TITLE>
<jsp:include page="header-signin.jsp"/>
<style type="text/css">
 .MyLink { COLOR: blue; TEXT-DECORATION: none; }
 .MyLink:hover { TEXT-DECORATION: underline; }
 </style>
 

<META http-equiv=Content-Type content="text/html; charset=utf-8">

<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<script language="javascript" src="js/gen_validatorv31.js"></script>
<BODY >
<DIV id=main>
  <DIV class="title-bar page-title"><font face="Arial, Helvetica, sans-serif" size="+2">Sign in to MyTube! </font></DIV>
  <hr>
<BR>
<TABLE cellSpacing=1 cellPadding=5 width="100%" align=center border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width="75%"><font face="Arial, Helvetica, sans-serif">
      <DIV style="FONT-SIZE: 83%">
      <DIV style="FONT-WEIGHT: bold">Join the largest worldwide video community!
      </DIV><BR>
      Get full access to MyTube with your account:
      <UL>
        <LI>Upload and share your own videos with the world
        <LI>Comment on, rate, and make video responses to your favorite videos
        <LI>Build playlists of favorites to watch later </LI></UL></DIV></font></TD>
    <TD style="PADDING-LEFT: 10px" vAlign=top align=middle>


      <FORM action="signin_check.jsp" name="form1">
      <DIV id=gaia_loginbox>
      <TABLE class=form-noindent cellSpacing=3 cellPadding=5 width="100%"
      border=0>
        <TBODY>
        <TR>
          <TD style="TEXT-ALIGN: center" vAlign=top noWrap
            bgColor=#e8eefa>              <DIV class=loginBox>
              <TABLE id=gaia_table cellSpacing=0 cellPadding=1 align=center
            border=0>
                <TBODY>
                <TR>
                  <TD align=middle colSpan=2>
                    <DIV style="FONT-SIZE: 13px; MARGIN: 5px 0px; WIDTH: 300px">
                    <DIV><img src="img/mylogo11.gif" width="110" height="44"> </DIV>
                    <DIV style="WIDTH: 200px; PADDING-TOP: 10px"><font face="Arial, Helvetica, sans-serif" size="-1">Sign in to
                    MyTube with your MyTube  Account</font>
                  </DIV>
                    </DIV></TD></TR>
                <TR>
                  <TD align=middle colSpan=2></TD></TR>
                <TR>
                  <TD noWrap>
                    <DIV align=right><SPAN class="gaia le lbl"><font face="Arial, Helvetica, sans-serif" size="-1">Username:</font>
                    </SPAN></DIV></TD>
                  <TD rowspan="3">                       <INPUT
                  id=Email  name=name>
                    <INPUT  id=Passwd type=password 
                  name=pass> </TD></TR>
                <TR>
                  <TD></TD>
                  </TR>
                <TR>
                  <TD align=right><SPAN class="gaia le lbl"><font face="Arial, Helvetica, sans-serif" size="-1">Password: </font></SPAN></TD>
                  </TR>
                <TR>
                  <TD></TD>
                  <TD align=left></TD></TR>
                <TR class=enabled id=rememberme-row>
                  <TD vAlign=top align=right><INPUT id=PersistentCookie
                  type=checkbox CHECKED value=yes name=PersistentCookie></TD>
                  <TD><LABEL class="gaia le rem" id=PersistentCookieLabel
                  for=PersistentCookie><font face="Arial, Helvetica, sans-serif" size="-1">Stay signed in </font></LABEL></TD></TR>
                <TR>
                  <TD></TD>
                  <TD align=left><INPUT type="image" src="img/signin_button2.gif"  name=signIn>
                  </TD></TR>
                <TR id=ga-fprow>
                  <TD class="gaia le fpwd" vAlign=bottom align=middle colSpan=2
                height=33><A href="forgot.jsp" class="MyLink"><font face="Arial, Helvetica, sans-serif" size="-1">Can't access your account?</a>
        </A></TD></TR></TBODY></TABLE>
          </DIV></TD></TR></TBODY></TABLE></DIV>
      </FORM>
      <FORM id=gaia_universallogin onsubmit=return(gaia_onLoginSubmit());
      action="login.jsp">
          </FORM><BR>
      <TABLE class=form-noindent cellSpacing=3 cellPadding=6 width="100%"
      border=0>
        <TBODY>
        <TR>
          <TD style="FONT-SIZE: 83%" align=middle bgColor=#e8eefa><B><font face="Arial, Helvetica, sans-serif">Don't
            have an account? </font></B><BR>
            <A href="createAccount.jsp" class="MyLink"><B><font face="Arial, Helvetica, sans-serif">Sign
            up for MyTube</font></B></A></TD>
        </TR></TBODY></TABLE></TD></TR></TBODY></TABLE><BR><BR>
</DIV>
<script language="JavaScript" type="text/javascript">
//You should create the validator only after the definition of the HTML form
  var frmvalidator  = new Validator("form1");
  frmvalidator.addValidation("name","req","Please enter your Name");
  
 
  frmvalidator.addValidation("pass","req","Please enter your password");
  frmvalidator.addValidation("pass","maxlen=20",	"Max length for password is 20");
  

</script>
<jsp:include page="footer.jsp"/>

</BODY></HTML>
