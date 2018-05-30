<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Deductions Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<script language="JavaScript">
	function check() {
		document.deduct.action = "./deduction.jsp";
		document.deduct.submit();
	}
	function checkmonth() {
		var mon = document.deduct.month.value;
		if (mon > 12) {
			alert("Month Should be <=12");
			document.deduct.month.focus();
			document.deduct.month.value = "";
		}
	}
	function delded() {
		document.deduct.action = "./del_deduct.jsp";
		document.deduct.submit();
	}
	function goBack() {
		window.location = "registration.jsp";
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<%!String empname, deptcode, desncode;%>
	<form action="" name="deduct" mothod="post">
		<center>
			<h1>PAY ROLL SYSTEM</h1>
			<hr>
			<br>
			<h2>Deductions Master</h2>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from employee");
			%>
			<table>
				<tr>
					<td>Year</td>
					<td><input type="text" name="year"></td>
					<td></td>
					<td>Month</td>
					<td><input type="text" name="month" onBlur="checkmonth()"></td>
				</tr>
				<tr>
					<td>Employee Code</td>
					<td><select name="empid" onBlur="check()">
							<option>--</option>
							<%
								while (rs.next()) {
							%>
							<option><%=rs.getString(1)%></option>
							<%
								}
							%>
					</select></td>
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
						<input type="reset" value="ADDNEW"
						style="width: 80; height: 20; border: 1px solid #0000FF">
						<input type="submit" value="DELETE"
						style="width: 80; height: 20; border: 1px solid #0000FF"
						onClick="delded()"> <input type="button" onclick="goBack();" value="BACK"
						style="width: 80; height: 20; border: 1px solid #0000FF"
						></td>
				</tr>
			</table>
		</center>
	</form>
</body>
</html>
