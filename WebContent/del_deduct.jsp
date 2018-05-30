<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Deductions</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<center>
		<form action="./deldedrecord.jsp">
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				Statement st1 = con.createStatement();
				Statement st2 = con.createStatement();
				Statement st3 = con.createStatement();
				ResultSet rs1 = st1.executeQuery("select year from deductions");
				ResultSet rs2 = st2.executeQuery("select month from deductions");
				ResultSet rs3 = st3.executeQuery("select empid from deductions");
			%>
			<table>
				<tr>
					<td><b>Select Record for deletion</b></td>
				</tr>
				<tr>
					<td><select name="year">
							<%
								while (rs1.next()) {
							%>
							<option><%=rs1.getString(1)%></option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td><select name="month">
							<%
								while (rs2.next()) {
							%>
							<option><%=rs2.getString(1)%></option>
							<%
								}
							%>
					</select></td>
				</tr>
				<tr>
					<td><select name="empid">
							<%
								while (rs3.next()) {
							%>
							<option><%=rs3.getString(1)%></option>
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
		</form>
	</center>
</body>
</html>
