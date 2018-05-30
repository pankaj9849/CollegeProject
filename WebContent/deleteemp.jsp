<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Delete Employee</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<form action="delemprecord.jsp">
		<center>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select empid from employee");
			%>
			<br>
			<h1>PAYROLL MANAGEMENT SYSTEM</h1>
			<hr>
			<br>
			<table>
				<tr>
					<td><b>Select Employee Id for deletion</b></td>
				</tr>
				<tr>
					<td><select name="empid">
							<%
								while (rs.next()) {
							%>
							<option><%=rs.getString(1)%></option>
							<%
								}
							%>
					</select></td>
				</tr>
			</table>
			<tr>
				<td><input type="submit" value="DELETE"
					style="width: 80; height: 20; border: 1px solid #0000FF"></td>
				<td><input type="submit" value="BACK"
					style="width: 80; height: 20; border: 1px solid #0000FF"
					onClick="history.back()"></td>
			</tr>

			</table>
		</center>
	</form>
</body>
</html>
