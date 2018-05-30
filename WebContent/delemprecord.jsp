<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<br>
	<br>
	<center>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

			String empid = request.getParameter("empid");
			PreparedStatement pst1 = con.prepareStatement("delete from deductions where empid='" + empid + "'");
			pst1.executeUpdate();
			PreparedStatement pst = con.prepareStatement("delete from employee where empid='" + empid + "'");
			pst.executeUpdate();
		%>
		<%
			out.println("Record Deleted");
		%>
		<a href="./registration.jsp">BACK</a>
		<!--
<table>
<tr>
<td>EmpCode</td>
<td><input name="empid" type="text"></td>
</tr>
<tr>
<td>Name</td>
<td><input name="empname" type="text"></td>
</tr>
<tr>
<td>Jdate</td>
<td><input name="jdate" type="text"></td>
</tr>
<tr>
<td>D-O-B</td>
<td><input name="dob" type="text"></td>
</tr>
<tr>
<td>Address</td>
<td><input name="address" type="text"></td>
</tr>
<tr>
<td>DeptCode</td>
<td><input name="deptcode" type="text"></td>
</tr>
<tr>
<td>DesnCode</td>
<td><input name="desncdoe" type="text"></td>
</tr>
<tr>
<td>Grade</td>
<td><input name="grade" type="text"></td>
</tr>
<tr>
<td>Basic</td>
<td><input name="basic" type="text"></td>
</tr>
</table>
<br>
<table>
<input type="text" value="DELETE" style="width: 80; height: 20; border: 1px solid #0000FF">
</table>
-->
	</center>
</body>
</html>
