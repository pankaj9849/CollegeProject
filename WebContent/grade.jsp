<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Grade Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="JavaScript">
	function back() {
		document.grade.action = "./registration.jsp";
		document.grade.submit();
	}
	function delgrd() {
		document.grade.action = "./deletegrade.jsp";
		document.grade.submit();
	}
</script>
<center>
	<body bgcolor="#FFFFCC">
		<form action="./grademaster.jsp" name="grade">
			<br>
			<h1>PAY ROLL SYSTEM</h1>
			<hr>
			<br>
			<h3>Grade Master</h3>
			<table>
				<tr>
					<td align="right"><div align="center">Grade Code</div></td>
					<td><input type="text" name="gcode"></td>
				</tr>
				<tr>
					<td><div align="center">Grade Description</div></td>
					<td><input type="textfield" name="gdesc"></td>
				</tr>
				<tr>
					<td><div align="center">Starting Basic</div></td>
					<td><input type="text" name="sbasic"></td>
				</tr>
				<tr>
					<td><div align="center">Ending Basic</div></td>
					<td><input type="text" name="ebasic"></td>
				</tr>
				<tr>
					<td height="25"><div align="center">HRA Percentage</div></td>
					<td><input type="text" name="hra"></td>
				</tr>
				<tr>
					<td><div align="center">Con Per</div></td>
					<td><input type="text" name="con"></td>
				</tr>
			</table>
			<pre>
<table>
<tr>
<td>
<input type="submit" value="SAVE"
							style="width: 80; height: 20; border: 1px solid #0000FF">
<input type="reset" value="ADDNEW"
							style="width: 80; height: 20; border: 1px solid #0000FF">
<input type="submit" value="DELETE"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onClick="delgrd()">
<input type="submit" value="BACK"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onclick="back()">
</td>
</tr>
</table>
</pre>
		</form>
	</body>
</center>
</html>
