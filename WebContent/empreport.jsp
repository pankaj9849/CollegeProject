<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Employee Report</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="JavaScript">
	function back() {
		document.emp.action = "./home.jsp";
		document.emp.submit();
	}
</script>
<body bgcolor="#FFFFCC">
	<center>
		<form name="emp">
			<table border="1">
				<th>EmpCode</th>
				<th>EmpName</th>
				<th>Address</th>
				<th>DesnCode</th>
				<th>Grade</th>
				<th>DeptCode</th>
				<th>Basic</th>
				<%
					Class.forName("com.mysql.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

					Statement st = con.createStatement();
					ResultSet rs = st.executeQuery("select * from employee");
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
				</tr>
				<%
					}
				%>
			</table>
			<br> <input type="submit" value="BACK" onClick="history.back()"
				style="width: 80; height: 20; border: 1px solid #0000FF">
		</form>
	</center>
</body>
</html>
