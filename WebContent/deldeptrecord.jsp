<%@ page language="java" import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Deletion of Records</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<br>
	<br>
	<center>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

			String deptcode = request.getParameter("deptcode");
			PreparedStatement pst1 = con.prepareStatement("delete from deptmaster where deptcode='" + deptcode + "'");
			pst1.executeUpdate();
		%>
		<%
			out.println("Record Deleted");
		%>
		<a href="./registration.jsp">BACK</a>
	</center>
</body>
</html>
