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
			PreparedStatement pst = con.prepareStatement("insert into employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, request.getParameter("empid"));
			pst.setString(2, request.getParameter("empname"));
			pst.setString(3, request.getParameter("jdate"));
			pst.setString(4, request.getParameter("dob"));
			pst.setString(5, request.getParameter("address"));
			pst.setString(6, request.getParameter("dept"));
			pst.setString(7, request.getParameter("desn"));
			pst.setString(8, request.getParameter("grade"));
			pst.setString(9, request.getParameter("salary"));
			pst.setString(10, request.getParameter("pfindicator"));
			pst.setString(11, request.getParameter("pfnumber"));
			pst.setString(12, request.getParameter("cleaves"));
			pst.setString(13, request.getParameter("eleaves"));
			pst.setString(14, request.getParameter("sleaves"));

			pst.executeUpdate();
			out.println("data inserted");
		%>

		<a href="./employee.jsp">back</a>
	</center>
</body>
</html>
