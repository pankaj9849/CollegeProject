<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Deductions Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="JavaScript">
	function check1() {
		<a href=./home.jsp></a>
	}
</script>
<body bgcolor="#FFFFCC">
	<form action="./deduct" name="deduct">
		<center>
			<h1>PAYROLL MANAGEMENT SYSTEM</h1>
			<hr>
			<br>
			<h3>Deductions Master</h3>
			<table>
				<tr>
					<td>Year</td>
					<td><input type="text" name="year"></td>
					<td></td>
					<td>Month</td>
					<td><input type="text" name="month"></td>
				</tr>
				<tr>
					<td>Employee Code</td>
					<td><input type="text" name="empid"></td>
					<td></td>
					<td>Employee Name</td>
					<td><input type="text" name="empname"></td>
				</tr>
				<tr>
					<td>Department Code</td>
					<td><input type="text" name="deptcode"></td>
					<td></td>
					<td>Designation Code</td>
					<td><input type="text" name="desncode"></td>
				</tr>
				<tr>
					<td>Other Earnings-I</td>
					<td><input type="text" name="oe1"></td>
					<td></td>
					<td>Other Earnings-II</td>
					<td><input type="text" name="oe2"></td>
				</tr>
				<tr>
					<td>Income Tax</td>
					<td><input type="text" name="it"></td>
					<td></td>
					<td>Other Deductions-I</td>
					<td><input type="text" name="od1"></td>
				</tr>
				<tr>
					<td>Other Deductions-II</td>
					<td><input type="text" name="od2"></td>
					<td></td>
					<td>Other Deductions-III</td>
					<td><input type="text" name="od3"></td>
				</tr>
			</table>
			<br>
			<table>
				<tr></tr>
				<tr>
					<td><input type="submit" value="SAVE"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="EDIT"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="DELETE"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="SEARCH"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="ADDNEW"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="BACK"
						style="width: 80; height: 20; border: 1px solid #0000FF"
						onclick="history.back()"></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
