<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>PAYROLL MANAGEMENT SYSTEM REPORT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<%!int year;%>
	<center>
		<table border="1">
			<th>EmpCode</th>
			<th>Name</th>
			<th>Address</th>
			<th>DeptCode</th>
			<th>DesnCode</th>
			<th>Grade</th>
			<th>Basic</th>
			<th>year</th>
			<th>month</th>
			<th>OE-1</th>
			<th>OE-2</th>
			<th>IT</th>
			<th>OD-1</th>
			<th>OD-2</th>
			<th>OD-3</th>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				Statement st1 = con.createStatement();
				ResultSet rs = st
						.executeQuery("select * from employee,deductions where employee.empid=deductions.empid");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getInt(9)%></td>
				<td><%=rs.getInt(15)%></td>
				<td><%=rs.getInt(16)%></td>
				<td><%=rs.getInt(21)%></td>
				<td><%=rs.getInt(22)%></td>
				<td><%=rs.getInt(23)%></td>
				<td><%=rs.getInt(24)%></td>
				<td><%=rs.getInt(25)%></td>
				<td><%=rs.getInt(26)%></td>
			</tr>
			<%
				}
			%>
		</table>
		<br> <br> <input type="submit" value="BACK"
			style="width: 80; height: 20; border: 1px solid #0000FF"
			onClick="history.back()">
	</center>
</body>
</html>
				