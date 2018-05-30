<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Grade Report</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<center>
		<table border="1">
			<th>Grade Code</th>
			<th>Grade Desc</th>
			<th>Starting Basic</th>
			<th>Ending Basic</th>
			<th>HRA</th>
			<th>Con Per</th>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select * from grade order by gcode");
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getDouble(3)%></td>
				<td><%=rs.getDouble(4)%></td>
				<td><%=rs.getDouble(5)%></td>
				<td><%=rs.getDouble(6)%></td>
			</tr>
			<%
				}
			%>
		</table>
		<br> <br> <input type="submit" value="BACK"
			style="weight: 80; height: 20; border: 1px solid #0000FF"
			onclick="history.back()">
	</center>
</body>
</html>
