<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Department and Designation Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<body bgcolor="#FFFFCC">
	<center>
		<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

			Statement st = con.createStatement();
			PreparedStatement pst = con.prepareStatement("insert into deductions values(?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, request.getParameter("year"));
			pst.setString(2, request.getParameter("month"));
			pst.setString(3, request.getParameter("empid"));
			pst.setString(4, request.getParameter("empname"));
			pst.setString(5, request.getParameter("deptcode"));
			pst.setString(6, request.getParameter("desncode"));
			pst.setString(7, request.getParameter("oe1"));
			pst.setString(8, request.getParameter("oe2"));
			pst.setString(9, request.getParameter("it"));
			pst.setString(10, request.getParameter("od1"));
			pst.setString(11, request.getParameter("od2"));
			pst.setString(12, request.getParameter("od3"));

			pst.executeUpdate();
			out.println("data inserted");
		%>

		<a href="./abc.jsp">back</a>
	</center>
</body>
</html>
