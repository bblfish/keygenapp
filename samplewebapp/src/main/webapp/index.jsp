<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Keygen sample webapp</title>
<script type="text/javascript" src="crosskeygen.js">
	/**/
</script>
</head>
<body onload="configurePage()">
<div id="iehelptext" style="display: none;">
<p>Using Internet Explorer under Windows Vista or above or Windows
Server 2008, you need to configure the following for this to work:</p>
<ul>
	<li>Add this site to the <i>Trusted Sites</i> list: in Internet
	Options -&gt; Security -&gt; Trusted Sites -&gt; Sites -&gt; Add ...</li>
	<li>You may need to configure the trust level (in this tab), using
	<i>Custom Level...</i>: enable <i>Initialize and script ActiveX
	controls not marked as safe for scripting</i>.</li>
	<li>If you are using Windows Vista without SP1 or above, you will
	probably need to install <a href="cacert.crt">this certificate</a> as a
	Trusted Root Certification Authority Certificate for your own
	certificate installation to succeed. You should probably remove that
	trusted root CA certificate afterwards.</li>
</ul>
</div>
<form id="keygenform">
<table>
	<tr>
		<td>WebID:</td>
		<td><input name="webid" id="webid" /></td>
	</tr>
	<tr>
		<td>Key strength:</td>
		<td id="keystrenghtd"><keygen id="spkac" name="spkac"
			challenge="TheChallenge1" /></td>
	</tr>
</table>
<input id="keygensubmit" type="submit" /></form>
</html>