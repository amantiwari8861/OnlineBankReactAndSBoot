<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<%!
long len;
%>
<HTML lang=en dir=ltr><HEAD><TITLE>MyTube - Broadcast Yourself.</TITLE>
<jsp:include page="header-signin.jsp"/>
<style>
<!--
.hide { position:absolute; visibility:hidden; }
.show { position:absolute; visibility:visible; }
-->
</style>

<SCRIPT LANGUAGE="JavaScript">

//Progress Bar script- by Todd King (tking@igpp.ucla.edu)
//Modified by JavaScript Kit for NS6, ability to specify duration
//Visit JavaScript Kit (http://javascriptkit.com) for script
//var set_duration=document.form1.setValue.value

var duration=<%=len%>; // Specify duration of progress bar in seconds
var _progressWidth = 100;	// Display width of progress bar.

var _progressBar = "|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"
var _progressEnd = 1;
var _progressAt = 0;


// Create and display the progress dialog.
// end: The number of steps to completion
function ProgressCreate(end) {
	// Initialize state variables
	_progressEnd = end;
	_progressAt = 0;

	// Move layer to center of window to show
	if (document.all) {	// Internet Explorer
		progress.className = 'show';
		progress.style.left = (document.body.clientWidth/2) - (progress.offsetWidth/2);
		progress.style.top = document.body.scrollTop+(document.body.clientHeight/2) - (progress.offsetHeight/2);
	} else if (document.layers) {	// Netscape
		document.progress.visibility = true;
		document.progress.left = (window.innerWidth/2) - 100+"px";
		document.progress.top = pageYOffset+(window.innerHeight/2) - 40+"px";
	} else if (document.getElementById) {	// Netscape 6+
		document.getElementById("progress").className = 'show';
		document.getElementById("progress").style.left = (window.innerWidth/2)- 100+"px";
		document.getElementById("progress").style.top = pageYOffset+(window.innerHeight/2) - 40+"px";
	}

	ProgressUpdate();	// Initialize bar
}

// Hide the progress layer
function ProgressDestroy() {
	// Move off screen to hide
	if (document.all) {	// Internet Explorer
		progress.className = 'hide';
	} else if (document.layers) {	// Netscape
		document.progress.visibility = false;
	} else if (document.getElementById) {	// Netscape 6+
		document.getElementById("progress").className = 'hide';
	}
}

// Increment the progress dialog one step
function ProgressStepIt() {
	_progressAt++;
	if(_progressAt > _progressEnd) _progressAt = _progressAt % _progressEnd;
	ProgressUpdate();
}

// Update the progress dialog with the current state
function ProgressUpdate() {
	var n = (_progressWidth / _progressEnd) * _progressAt;
	if (document.all) {	// Internet Explorer
		var bar = dialog.bar;
 	} else if (document.layers) {	// Netscape
		var bar = document.layers["progress"].document.forms["dialog"].bar;
		n = n * 0.55;	// characters are larger
	} else if (document.getElementById){
                var bar=document.getElementById("bar")
        }
	var temp = _progressBar.substring(0, n);
	bar.value = temp;
}

// Demonstrate a use of the progress dialog.
function Demo() {
	ProgressCreate(10);
	window.setTimeout("Click()", 100);
}

function Click() {
	if(_progressAt >= _progressEnd) {
		ProgressDestroy();
		return;
	}
	ProgressStepIt();
	window.setTimeout("Click()", (duration-1)*1000/10);
}

function CallJS(jsStr) { //v2.0
  return eval(jsStr)
}

</script>

<SCRIPT LANGUAGE="JavaScript">

// Create layer for progress dialog
document.write("<span id=\"progress\" class=\"hide\">");
	document.write("<FORM name=dialog id=dialog>");
	document.write("<TABLE border=2  bgcolor=\"#FFFFCC\">");
	document.write("<TR><TD ALIGN=\"center\">");
	document.write("Progress<BR>");
	document.write("<input type=text name=\"bar\" id=\"bar\" size=\"" + _progressWidth/2 + "\"");
	if(document.all||document.getElementById) 	// Microsoft, NS6
		document.write(" bar.style=\"color:navy;\">");
	else	// Netscape
		document.write(">");
	document.write("</TD></TR>");
	document.write("</TABLE>");
	document.write("</FORM>");
document.write("</span>");
ProgressDestroy();	// Hides

</script>

<META http-equiv=Content-Type content="text/html; charset=utf-8"><!-- machid: sWkFSZzctYUFHdmdEb3FOMk9VSm9Lc2hyYTJpU1p1dmhjTUwwMkhnb2RTVFd4QUthWm40NFRn --><LINK 
id=www-core-css href="createAccount_files/www-core-vflnkVOEZ.css" 
rel=stylesheet><LINK href="createAccount_files/www-the-rest-vflra0K1C.css" 
rel=stylesheet><LINK href="createAccount_files/login-vfl32pjia.css" 
type=text/css rel=stylesheet><LINK title="YouTube Video Search" 
href="#" 
type=application/opensearchdescription+xml rel=search><LINK 
href="http://s.ytimg.com/yt/favicon-vflZlzSbU.ico" type=image/x-icon 
rel=icon><LINK href="#" 
type=image/x-icon rel="shortcut icon">
<META content="Share your videos with friends, family, and the world" 
name=description>
<META content="video, sharing, camera phone, video phone, free, upload" 
name=keywords>
<SCRIPT id=legacy-user-datastore 
style="BEHAVIOR: url('#default#userdata')"></SCRIPT>

<SCRIPT id=www-core-js src="createAccount_files/www-core-vfle07YbB.js"></SCRIPT>

<SCRIPT>
    
    yt.setConfig({
      'XSRF_TOKEN': '6y8Uvi8hro9V1c_Jw2JFfVi1vad8MTI5MTUzODMwOQ==',
      'XSRF_FIELD_NAME': 'session_token'
    });
    yt.pubsub.subscribe('init', yt.www.xsrf.populateSessionToken);


    yt.setConfig('XSRF_QL_PAIR', 'session_token=EQwAOSxiAfpH5CyMUdmdgwh9j958MA==');
  
    yt.setConfig('XSRF_REDIRECT_TOKEN', 'GVGKvfpp_X4Y9_XBkksqHK03uBp8MTI5MTUzODMwOQ==');


    yt.setConfig('LOGGED_IN', false);
  </SCRIPT>

<SCRIPT src="createAccount_files/www-account-vflAo7ypE.js"></SCRIPT>

<SCRIPT type=text/javascript>
  function handleSignInInput(e) {
    var key;
    if (window.event) {
      // Get input key from IE
      key = e.keyCode;
    } else if (e.which) {
      // Get input key from Firefox/Netscape/Opera
      key = e.which;
    }
    // Check to see if key is 'enter'
    if (key == 13) {
      document.getElementById("loginForm").submit();
    }
  }
  function updatePostalCodeVisibility() {
    var select = _gel('countrySelect');
    var postalCodeRow = _gel('postalCodeRow');
    if (!select || !postalCodeRow) {
      return;
    }

    switch (select.value) {
      default:
        postalCodeRow.style.display = 'none';
        break;
      case 'US':
      case 'CA':
      case 'GB':
        postalCodeRow.style.display = '';
    }
  }
  yt.pubsub.subscribe('init', updatePostalCodeVisibility);
  </SCRIPT>

<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
</HEAD>
<BODY class="date-20101204 en_US ltr is-english" dir=ltr background="img/background.jpg">
<DIV class=signup-main>
<DIV id=pagination-top 
style="PADDING-RIGHT: 0pt; PADDING-LEFT: 0pt; PADDING-BOTTOM: 5px; PADDING-TOP: 25px; TEXT-ALIGN: right"></DIV>
<span class="formFieldSmall"></span>
<TABLE width="702" cellPadding=0 cellSpacing=0 >
  <TBODY>
  <TR>
    <TD vAlign=top width="17%"></TD>
    <TD width="83%"  vAlign=top>
      <DIV id=suSignupDiv>
      <DIV class=signup-outer-frame 
      style="BORDER-RIGHT: #c3d9ff 0px solid; BORDER-TOP: #c3d9ff 0px solid; MARGIN-LEFT: 0%; BORDER-LEFT: #c3d9ff 0px solid; MARGIN-RIGHT: 0%; BORDER-BOTTOM: #c3d9ff 0px solid">
      <DIV class=signup-inner-frame>
      <FORM id=signupForm name=signupForm 
      action="upload" method="post" enctype="multipart/form-data" onSubmit="CallJS('Demo()')">
      <TABLE class=signup-table 
      style="BORDER-RIGHT: #e8eefa 1px solid; BORDER-TOP: #e8eefa 1px solid; BORDER-LEFT: #e8eefa 1px solid; BORDER-BOTTOM: #e8eefa 1px solid; BACKGROUND-COLOR: #e8eefa" 
      cellSpacing=0 cellPadding=4>
        <TBODY>
        <TR>
          <TD width="146">&nbsp;</TD>
          <TD width="218">&nbsp;
		  <%
		  String msg=request.getParameter("msg");
		  if(msg==null)
		  {}
		  else if(msg.equals("success"))
		  {
		  String fname=request.getParameter("fileName");
		  java.io.File f=new java.io.File(application.getRealPath("uploaded_by_user")+"\\"+fname);
		  len=f.length();
		  
		  out.println("<font color=red>"+len);
		  out.println(fname+" is uploaded successfully...</font>");
		  }
		  else
		  {
 			out.println("<font color=red>");
		  out.println("file is not uploaded successfully...</font>");
		  		  
		  }
		  %></TD>
          <TD width="191" rowspan="5"><font face="Arial, Helvetica, sans-serif" size="-1"><b>&nbsp;&nbsp;&nbsp;&nbsp;Videos can be...</b>
            <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* High Definition<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* Up to 2 GB in size.<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;* A wide variety of formats</font></TD>
        </TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=signUpEmail><SPAN 
            class=nowrap><font face="Arial, Helvetica, sans-serif" size="-1">Select a file to upload :</font></SPAN> </LABEL></TD>
          <TD class=formFieldSmall><input type="file" name="file" value="Browser"> </TD>
        </TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=username><SPAN 
            class=nowrap><font face="Arial, Helvetica, sans-serif" size="-1">Title :</font></samp></LABEL></TD>
          <TD class=formFieldSmall><input type="text" name="title" size=30></TD>
        </TR>
        <TR>
          <TD class=loginFormLabel><LABEL for=countrySelect><SPAN 
            class=nowrap><font face="Arial, Helvetica, sans-serif" size="-1">Category :</font></SPAN> </LABEL></TD>
          <TD class=formFieldSmall><select id=select 
            onChange=updatePostalCodeVisibility(this); name=category>
            <option>---</option>
            <option value=cmd>Comedy</option>
            <option 
              value=kd>Kids</option>
            <option value=senti>Sentimental</option>
            <option value=sc>Science & Technology</option>
            <option value=spt>Sports</option>
			<option value=boly>Bollywood</option>
			<option value=dance>Dance</option>
			<option value=comedy>Comedy</option>
            <option value=en>Entertainment</option>
            <option 
              value=othr>Other</option>
              </select> </TD>
        </TR>
        
        <TR>
          <TD class=loginFormLabel><font face="Arial, Helvetica, sans-serif" size="-1">Type</font> <SPAN class=nowrap>:</SPAN> </TD>
          <TD class=formFieldSmall><INPUT id=public type=radio value=public 
            name=type checked>
          <font face="Arial, Helvetica, sans-serif" size="-1">public </font>
            <INPUT id=private 
            type=radio value=private name=type>
          <LABEL for=female><font face="Arial, Helvetica, sans-serif" size="-1">private  (registered)</font> </LABEL></TD>
          </TR>
        <TR>
          <TD>&nbsp;</TD>
          <TD><input type="image" src="img/upload_button3.gif"> </TD>
          <TD width="191" rowspan="2"><font face="Arial, Helvetica, sans-serif" size="-1"><b> Important: </b>Do not upload any TV shows, music videos, music concerts, or commercials without permission unless they consist entirely of content you created yourself. </font></TD>
        </TR>
        <TR>
          <TD height="27">&nbsp;</TD>
          <TD>&nbsp;</TD>
          </TR></TBODY></TABLE>
  </FORM></DIV></DIV></DIV></TD></TR></TBODY></TABLE></DIV>

<SCRIPT type=text/javascript>
    document.signupForm.email.focus();
  var validUsernameStatus = true;
  var usernameStatusMessage = '';

  function clearUsernameStatus() {
    _gel('check_username').innerHTML = '';
  }

  function getBirthValue(ctrl_name) {
    list = document.getElementsByName(ctrl_name)
    if (list.length != 1) {
      return 0;
    }
    return list[0].options[list[0].selectedIndex].value;
  }

  function checkAge() {
    var year = getBirthValue("birthday_yr");
    var month = getBirthValue("birthday_mon");
    var day = getBirthValue("birthday_day");
    var age = 0;
    if (year != 0 && month != 0 && day != 0) {
      var birthday = new Date(year, month - 1, day);
      var birthyear = birthday.getFullYear();
      var today = new Date();
      var thisYear = today.getFullYear();
      var birthdayThisYear = new Date(birthday);
      birthdayThisYear.setFullYear(thisYear);
      var adjust = (today < birthdayThisYear) ? 1 : 0;
      age = thisYear - birthyear - adjust;
    }
    if (age < 13) {
      document.getElementById("signUpEmail").value = ""
    }
  }

  function validateUsernameWhenSubmit() {
    if (validUsernameStatus) {
      document.getElementById("signupForm").submit();
    } else {
      document.signupForm.username.focus();
      alert(usernameStatusMessage);
    } 
  }

  function updateUsernameStatus() {
    var username = document.signupForm.username.value;
    if (username != "") {
      showAjaxDiv('check_username', '/user_ajax?action_check_username&user=' + username + '&suggest=1');
    }
    else{
      clearUsernameStatus();
    }
  }

  function showAjaxDiv(divName, url) {
    var callback = function(req) {
      showAjaxDivResponse(req, divName)
    };
    yt.net.ajax.sendRequest(url, { method: "GET", onComplete: callback });
  }

  function showAjaxDivResponse(req, divName) {
    _gel(divName).innerHTML = yt.net.ajax.getNodeValue(req.responseXML, 'html_content');
    usernameStatusMessage = _gel('status_msg').innerHTML;
    if (_gel('user_status').innerHTML == 'username_ok') {
      validUsernameStatus = true;
    } else {
      validUsernameStatus = false;
    }
    _showdiv(divName);

    divName = 'suggest_username';
    var suggestions = yt.net.ajax.getNodeValue(req.responseXML, 'suggestions');
    if (suggestions != null) {
      var usernames = suggestions.split(',');
      var content = '';
      for (var i = 0; i < usernames.length; i++) {
        var username = usernames[i];
        var onclick = "onclick=fillInUsername('" + username + "'); return false;";
        content += '<input type="radio"' + onclick + '>' + username + '</input><br>';
      }
      _gel(divName).innerHTML = content;
      _showdiv(divName);
    } else {
      _hidediv(divName);
    }
  }

  function fillInUsername(username) {
    document.signupForm.username.value = username;
    _hidediv('check_username');
    _hidediv('suggest_username');
    updateUsernameStatus();
  }
</SCRIPT>
</DIV>
<DIV class="hid passive editable" id=quicklist 
data-loaded-ajax-url="/list_ajax?action_get_quicklist=1" 
data-quicklist-ajax-url="/list_ajax?action_get_quicklist=1" 
data-active-ajax-url="" data-list-type="QL" data-list-id="">
<DIV id=quicklist-player-container>
<DIV id=quicklist-player-close></DIV>
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
<DIV></DIV><!-- end page --><!-- begin postpage -->
<DIV id=postpage>
<SCRIPT>
    



  yt.setMsg({
    'QUEUE_CLEAR': 'Are you sure you wish to continue?',
    'ERROR_OCCURRED': 'Sorry, an error occurred.',
    'NEXT_VIDEO_TOOLTIP': 'Next video:<br> &#8220;${next_video_title}&#8221;',
    'NEXT_VIDEO_NOTHUMB_TOOLTIP': 'Next video',
    'SHOW_PLAYLIST_TOOLTIP': 'Show playlist',
    'HIDE_PLAYLIST_TOOLTIP': 'Hide playlist',
    'AUTOPLAY_ON_TOOLTIP': 'Turn autoplay off',
    'AUTOPLAY_OFF_TOOLTIP': 'Turn autoplay on',
    'SHUFFLE_ON_TOOLTIP': 'Turn shuffle off',
    'SHUFFLE_OFF_TOOLTIP': 'Turn shuffle on',
    'QUICKLIST_PLAYLIST_SAVED': 'Playlist saved!',
    'QUICKLIST_ADDED_TO_FAVORITES': 'Added to favorites',
    'QUICKLIST_ADDED_TO_PLAYLIST': 'Added to playlist',
    'QUICKLIST_ADDED_TO_QUEUE': 'Added to queue'   });


  yt.setConfig({
    'QUICKLIST_PLAYING_INDEX': -1,
    'ENABLE_CLIENT_VIDEO_CACHE': false   });


    yt.pubsub.subscribe('init', yt.www.watch.quicklist.init);




        yt.www.thumbnaildelayload.init();




  </SCRIPT>
	</DIV><br><br><br><br><br><br><br><br><br><br><br><br><jsp:include page="footer.jsp"/>
</BODY></HTML>
