function _Avazu_AgetKeyWord(){if(_Avazu_uRef=="0"||_Avazu_uRef==""||_Avazu_uRef=="-")return"";var e=0,t,n;try{t=_Avazu_uRef.substring(e+3,_Avazu_uRef.length);for(var r=0;r<_Avazu_sWebM.length;r++)if(t.toLowerCase().indexOf(_Avazu_sWebM[r].toLowerCase())>-1)if((e=_Avazu_uRef.indexOf("?"+_Avazu_sWkd[r]+"="))>-1||(e=_Avazu_uRef.indexOf("&"+_Avazu_sWkd[r]+"="))>-1){n=_Avazu_uRef.substring(e+_Avazu_sWkd[r].length+2,_Avazu_uRef.length),(e=n.indexOf("&"))>-1&&(n=n.substring(0,e));for(var i=0;i<_Avazu_uOno.length;i++)if(_Avazu_uOno[i].toLowerCase()==n.toLowerCase())break;return _AvazuSMastWeb=_Avazu_sWebM[r],_Avazu_UsbK(n)}}catch(s){return""}return""}function _Avazu_UsbK(e){var t="";try{if(!e||e=="")return"";for(var n=0;n<e.length;n++)e.charAt(n)==" "?t+="+":t+=e.charAt(n)}catch(r){return""}return t}function _AvazuAddHTML(e){if(document.all){if(document.readyState!="complete"){setTimeout("_AvazuAddHTML('"+e+"')",1e3);return}document.body.insertAdjacentHTML("beforeEnd",e)}else if(document.createRange){var t=document.createRange();t.setStartAfter(document.body.lastChild);var n=t.createContextualFragment(e);document.body.appendChild(n)}else if(document.layers){var r=new Layer(window.innerWidth);r.document.open(),r.document.write(e),r.document.close(),r.top=document.height,document.height+=r.document.height,r.visibility="show"}}function _RetSetC(){if(typeof _AvazuRpid!="undefined"&&_AvazuRpid!="")var e=_Avazutrim(_AvazuRpid);else if(typeof _Rpid=="undefined"||_Rpid=="")var e=0;else var e=_Avazutrim(_Rpid);if(typeof _AvazuRunid!="undefined")var t=_AvazuRunid;else var t=_Runid;if(typeof _AvazuRadvid!="undefined")var n=_AvazuRadvid;else var n=_Radvid;var r=_Avazu_AgetKeyWord(),i="&pid="+_Avazuisotohtml(e)+"&prunid="+t+"&k="+_Avazuisotohtml(r)+"&MastWeb="+_Avazuisotohtml(_AvazuSMastWeb),s=escape(window.location),o=escape(document.referrer);i+="&amp;loc="+s+"&amp;referer="+o+"&amp;h="+screen.height+"&amp;w="+screen.width,_AvazuAddHTML('<iframe class="_avazuIfrFixed" marginheight="0" marginwidth="0"  src="'+_Avazurooturl+"check_adv.php?r="+Math.random()+"&runid="+t+"_0&advid="+n+"&pid="+e+"&gettype=0&httptype="+_Avazuhttptype+i+'" width="0" height="0"  frameborder="0"  scrolling="no"></iframe>')}function _Avazutrim(e){return typeof e=="string"?e.replace(/^\s*|\s*$/g,""):e}function _Avazuisotohtml(e){try{e=e.replace(/&/g,"%26amp%3B").replace(/&amp;/g,"%26amp%3B")}catch(t){return e}return e}var _Avazu_uDoc=document,_Avazu_uLoc=_Avazu_uDoc.location,_Avazu_uRef=_Avazu_uDoc.referrer,_Avazu_sWebM=new Array,_Avazu_sWkd=new Array;if("https:"==document.location.protocol)var _Avazurooturl="https://avazudsp.net/ret/",_Avazuhttptype="2";else var _Avazurooturl="http://adserving.avazudsp.net/",_Avazuhttptype="1";_Avazu_sWebM[0]="google",_Avazu_sWkd[0]="q",_Avazu_sWebM[1]="yahoo",_Avazu_sWkd[1]="p",_Avazu_sWebM[2]="msn",_Avazu_sWkd[2]="q",_Avazu_sWebM[3]="aol",_Avazu_sWkd[3]="query",_Avazu_sWebM[4]="aol",_Avazu_sWkd[4]="encquery",_Avazu_sWebM[5]="lycos",_Avazu_sWkd[5]="query",_Avazu_sWebM[6]="ask",_Avazu_sWkd[6]="q",_Avazu_sWebM[7]="altavista",_Avazu_sWkd[7]="q",_Avazu_sWebM[8]="netscape",_Avazu_sWkd[8]="query",_Avazu_sWebM[9]="cnn",_Avazu_sWkd[9]="query",_Avazu_sWebM[10]="looksmart",_Avazu_sWkd[10]="qt",_Avazu_sWebM[11]="about",_Avazu_sWkd[11]="terms",_Avazu_sWebM[12]="mamma",_Avazu_sWkd[12]="query",_Avazu_sWebM[13]="alltheweb",_Avazu_sWkd[13]="q",_Avazu_sWebM[14]="gigablast",_Avazu_sWkd[14]="q",_Avazu_sWebM[15]="voila",_Avazu_sWkd[15]="rdata",_Avazu_sWebM[16]="virgilio",_Avazu_sWkd[16]="qs",_Avazu_sWebM[17]="live",_Avazu_sWkd[17]="q",_Avazu_sWebM[18]="baidu",_Avazu_sWkd[18]="wd",_Avazu_sWebM[19]="alice",_Avazu_sWkd[19]="qs",_Avazu_sWebM[20]="yandex",_Avazu_sWkd[20]="text",_Avazu_sWebM[21]="najdi",_Avazu_sWkd[21]="q",_Avazu_sWebM[22]="aol",_Avazu_sWkd[22]="q",_Avazu_sWebM[23]="club-internet",_Avazu_sWkd[23]="query",_Avazu_sWebM[24]="mama",_Avazu_sWkd[24]="query",_Avazu_sWebM[25]="seznam",_Avazu_sWkd[25]="q",_Avazu_sWebM[26]="search",_Avazu_sWkd[26]="q",_Avazu_sWebM[27]="wp",_Avazu_sWkd[27]="szukaj",_Avazu_sWebM[28]="onet",_Avazu_sWkd[28]="qt",_Avazu_sWebM[29]="netsprint",_Avazu_sWkd[29]="q",_Avazu_sWebM[30]="google.interia",_Avazu_sWkd[30]="q",_Avazu_sWebM[31]="szukacz",_Avazu_sWkd[31]="q",_Avazu_sWebM[32]="yam",_Avazu_sWkd[32]="k",_Avazu_sWebM[33]="pchome",_Avazu_sWkd[33]="q",_Avazu_sWebM[34]="kvasir",_Avazu_sWkd[34]="searchExpr",_Avazu_sWebM[35]="sesam",_Avazu_sWkd[35]="q",_Avazu_sWebM[36]="ozu",_Avazu_sWkd[36]="q",_Avazu_sWebM[37]="terra",_Avazu_sWkd[37]="query",_Avazu_sWebM[38]="nostrum",_Avazu_sWkd[38]="query",_Avazu_sWebM[39]="mynet",_Avazu_sWkd[39]="q",_Avazu_sWebM[40]="ekolay",_Avazu_sWkd[40]="q",_Avazu_sWebM[41]="search.ilse",_Avazu_sWkd[41]="search_for",_Avazu_sWebM[42]="bing",_Avazu_sWkd[42]="q";var _Avazu_uOno=new Array,_AvazuSMastWeb="",_AvazuflashObject,_Avazu_pid;_RetSetC()