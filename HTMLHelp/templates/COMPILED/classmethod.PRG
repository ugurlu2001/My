TEXTENDTEXT lcSeeAlsoTopics = oHelp.InsertSeeAlsoTopics() TEXT	
<html>
<head>
<topictype value="<< TRIM(oHelp.oTopic.Type) >>"/>
<title><< TRIM(oHelp.oTopic.Topic) >></title>
<LINK rel="stylesheet" type="text/css" href="templates/wwhelp.css">
<SCRIPT SRC="templates/wwhelp.js"></SCRIPT>
</head>
<body leftmargin=0 topmargin=0>

<table border=0 width="100%" bgcolor="lightblue" class="banner" cellspacing="3">
<tr><td valign="center">
ENDTEXT if !EMPTY(oHelp.oTopic.SeeAlso) TEXT
	<span id="more" style="cursor:hand;" onclick="SeeAlsoButton();">
	    <img src="bmp/seealso.gif" border=0  alt="Related Topics" style="Font:cursor:Hand">
	</span>
	<div id="SeeAlsoTopics" class="hotlinkbox" style="display:none" onmouseleave="SeeAlsoButton();">
	<b>See also</b><br>
	<span style="margin-left:10px;margin-top:15px"><< lcSeeAlsoTopics >></span>
	</div>
ENDTEXT endif TEXT
<span class="projectname"><< oHelp.cProjectname >></span>
</td></tr><tr><td>
<span class="topicname">
<img src="bmp/<< TRIM(oHelp.oTopic.Type)>>.gif"> << oHelp.FormatHtml(TRIM(oHelp.oTopic.Topic)) >>
</span>
</td></tr>
</table>

<div class="contentpane">
<br>
<< oHelp.FormatHTML(oHelp.oTopic.Body) >>
<br>

<br>
ENDTEXT IF !EMPTY(oHelp.oTopic.Syntax) TEXT
<table border="0" cellpadding="3" width="96%">
<pre class="SyntaxBox">
<< oHelp.FormatHtml( oHelp.oTopic.Syntax ) >>
</pre>
</table>
ENDTEXT ENDIF TEXT

ENDTEXT IF !EMPTY(oHelp.oTopic.Returns) TEXT   
<h3 class="outdent">Return Value</h3>
<< oHelp.FormatHTML(oHelp.oTopic.Returns)>>
<br>
ENDTEXT ENDIF TEXT

ENDTEXT IF !EMPTY(oHelp.oTopic.Parameters) TEXT    
<h3 class="outdent">Parameters</h3>
<< oHelp.FormatHTML(strtran(oHelp.oTopic.Parameters,"b>","i>"))>>
ENDTEXT ENDIF TEXT  


ENDTEXT IF !EMPTY(oHelp.oTopic.Remarks) TEXT
<br>
<h3 class="outdent">Remarks</h3>
    << oHelp.FormatHTML(oHelp.oTopic.Remarks) >>
ENDTEXT ENDIF TEXT  

ENDTEXT IF !EMPTY(oHelp.oTopic.Example) TEXT
<br>
<h3 class="Outdent">Example</h3>
<pre><< oHelp.FormatHTML(oHelp.oTopic.Example)>></pre>
ENDTEXT ENDIF TEXT 

<< InsertMethodOverloads(oHelp) >>

ENDTEXT if !EMPTY(oHelp.oTopic.SeeAlso) TEXT
<br>
<h3 class="outdent">See also:</h3>
<< lcSeeAlsoTopics >>
ENDTEXT  endif TEXT
<p>
</div>
<hr>
<small>Last Updated: <i><< TTOD(oHelp.oTopic.Updated) >></i></small>
</body>
</html>ENDTEXT