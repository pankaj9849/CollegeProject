<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Department Report</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<center>
		<br> <br>
		<table border="1">
			<th>Dept Name</th>
			<th>Dept Desc</th>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from deptmaster");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
			</tr>
			<%
				}
			%>
		</table>
		<br> <br> <input type="submit" value="Back"
			style="width: 80; height: 20; border: 1px solid #0000FF"
			onClick="history.back()">
	</center>
</body>
</html>
