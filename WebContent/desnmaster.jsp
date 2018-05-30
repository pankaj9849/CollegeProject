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
			Connection con = DriverManager
					.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");
			System.out.println("connected");

			PreparedStatement pst = con.prepareStatement("insert into desnmaster values(?,?,?)");
			pst.setString(1, request.getParameter("deptcode"));
			pst.setString(2, request.getParameter("desncode"));
			pst.setString(3, request.getParameter("desndesc"));
			pst.executeUpdate();
			out.println("data inserted");
		%>
		<a href="./registration.jsp">back</a>
	</center>
</body>
</html>
