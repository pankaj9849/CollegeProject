<html>
<title>REGISTRATION FORM</title>
<script language="JavaScript">
	function back() {
		document.reg.action = "./home.jsp";
		document.reg.submit();
	}
</script>
<body bgcolor="#FFFFCC">
	<center>
		<br> <br>
		<h1>PAYROLL MANAGEMENT SYSTEM</h1>
		<hr>
		<form action="" name="reg">
			<pre>
<b><a href="./employee.jsp"><font
						face="Arial, Helvetica, sans-serif">EMPLOYEE MASTER</font></a></b>
<br>
<b><a href="./deductions.jsp"><font
						face="Arial, Helvetica, sans-serif">DEDUCTIONS MASTER</font></a></b>
<br>
<b><a href="./department.htm"><font
						face="Arial, Helvetica, sans-serif">DEPTARTMENT MASTER</font></a></b>
<br>
<b><a href="./designation.jsp"><font
						face="Arial, Helvetica, sans-serif">DESIGNATION MASTER</font></a></b>
<br>
<b><a href="./grade.jsp"><font
						face="Arial, Helvetica, sans-serif">GRADE MASTER</font></a></b>
<br>
<input type="submit" value="BACK"
					style="width: 80; height: 20; border: 1px solid #0000FF"
					onclick="back()">
</pre>
		</form>
	</center>
</body>
</html>