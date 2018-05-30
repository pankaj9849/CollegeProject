<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Grade Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<script language="javascript">
	function check() {
		document.grade.action = "./grade.jsp";
		document.grade.submit();
	}
</script>
<body bgcolor="#FFFFCC">
	<form name="grade">
		<center>
			<%
				double sbasic = Double.parseDouble(request.getParameter("sbasic"));
				double ebasic = Double.parseDouble(request.getParameter("ebasic"));
				double hra = Double.parseDouble(request.getParameter("hra"));
				double con1 = Double.parseDouble(request.getParameter("con"));
				double hra1 = (sbasic * hra) / 100;
				double con2 = (sbasic * con1) / 100;
			%>

			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");

				PreparedStatement pst = con.prepareStatement("insert into grade values(?,?,?,?,?,?)");
				pst.setString(1, request.getParameter("gcode"));
				pst.setString(2, request.getParameter("gdesc"));
				pst.setDouble(3, sbasic);
				pst.setDouble(4, ebasic);
				pst.setDouble(5, hra1);
				pst.setDouble(6, con2);
				pst.executeUpdate();
			%>
			<br> <br> <br> <br>
			<hr>
			<b><font color="#00CC33"> <%
 	out.println("DATA INSERTED");
 %>
			</font></b> <br> <br> <input type="submit" name="back" value="BACK"
				style="width: 80; height: 20; border: 1px solid #0000FF"
				onClick="check()">
			<hr>
		</center>
	</form>
</body>
</html>
