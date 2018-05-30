<%@ page language="java" import="java.sql.*" errorPage=""%>
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
			String year = request.getParameter("year");
			String month = request.getParameter("month");
			PreparedStatement pst1 = con.prepareStatement("delete from deductions where year='" + year + "' and month='"
					+ month + "' and empid='" + empid + "'");
			pst1.executeUpdate();
		%>
		<%
			out.println("Record Deleted");
		%>
		<a href="./registration.jsp">BACK</a>
	</center>
</body>
</html>
