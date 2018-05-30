<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Deductions Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="javascript">
	function back() {
		document.deduct1.action = "./registration.jsp";
		document.deduct1.submit();
	}
	function checkmonth() {
		var mon = document.deduct.month.value;
		if (mon > 12) {
			alert("Month Should be <=12");
			document.deduct.month.focus();
			document.deduct.month.value = "";
		}
	}
	function checkoe1() {
		var oe1 = document.deduct.oe1.value;
		if (isNaN(oe1)) {
			alert("enter only integers");
			document.deduct.oe1.focus();
			document.deduct.oe1.value = "";
		}
	}
	function delded1() {
		document.deduct1.action = "./del_deduct.jsp";
		//document.deduct1.action = "./deduct.jsp";
		document.deduct1.submit();
	}
</script>
<body bgcolor="#FFFFCC">
	<form action="./deduct.jsp" name="deduct">
		<center>
			<h1>PAYROLL MANAGEMENT SYSTEM</h1>
			<hr>
			<br>
			<h2>Deductions Master</h2>
			<%
				int year = Integer.parseInt(request.getParameter("year"));
				int month = Integer.parseInt(request.getParameter("month"));
				String empid = request.getParameter("empid");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager
						.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st
						.executeQuery("select * from employee where empid='"
								+ empid + "'");
				System.out.println("query executed");
				rs.next();
			%>

			<table>
				<tr>
					<td>Year</td>
					<td><input type="text" name="year" value="<%=year%>"
						readonly="yes"></td>
					<td></td>
					<td>Month</td>
					<td><input type="text" name="month" value="<%=month%>"
						onBlur="checkmonth()" readonly="yes"></td>
				</tr>
				<tr>
					<td>Employee Code</td>
					<td><select name="empid" readonly="yes">
							<option><%=rs.getString(1)%></option>
					</select></td>
					<td></td>
					<td>Employee Name</td>
					<td><input type="text" name="empname"
						value="<%=rs.getString(2)%>" readonly="yes"></td>
				</tr>
				<tr>
					<td>Department Code</td>
					<td><input type="text" name="deptcode"
						value="<%=rs.getString(8)%>" readonly="yes"></td>
					<td></td>
					<td>Designation Code</td>
					<td><input type="text" name="desncode"
						value="<%=rs.getString(6)%>" readonly="yes"></td>
				</tr>
				<tr>
					<td>Other Earnings-I</td>
					<td><input type="text" name="oe1" onBlur="checkoe1()"></td>
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
				<center>
					<tr></tr>
					<tr>
						<td><input type="submit" value="SAVE"
							style="width: 80; height: 20; border: 1px solid #0000FF">
							<input type="reset" value="ADDNEW"
							style="width: 80; height: 20; border: 1px solid #0000FF">
							<input type="submit" value="DELETE"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onClick="delded1()"> <input type="submit" value="BACK"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onclick="back()"></td>
					</tr>
				</center>
			</table>
		</center>
	</form>
</body>
</html>
