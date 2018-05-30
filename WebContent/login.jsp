<%@ page errorPage="ErrorPage.jsp" language="java" import="java.sql.*"%>
<%
	Connection conn = null;
	PreparedStatement stmt;
	ResultSet rs = null;
	try {
		String name, password;
		name = "kullu";
		password = "";
		int i = 0;
		name = request.getParameter("t1");
		System.out.println(name);
		password = request.getParameter("t2");
		System.out.println(password);
		//to store session variable CID
		//session.putValue("CUSTID",name);
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");
		System.out.println("connectd");
		stmt = conn
				//.prepareStatement("select * from admin  ");
				.prepareStatement("select * from admin where name=? and password=?");
		stmt.setString(1, name);
		stmt.setString(2, password);

		rs = stmt.executeQuery();

		if (rs.next()) {
			i++;
			out.println(i);
			System.out.println(i);
			System.out.println("fdfd");
		}
		if (i > 0) {
			/*Creating a session variable to keep track of the CustomerID in the whole application. */
			//session.putValue("CUSTID",cid);
%>
<jsp:forward page="registration.jsp" />
<%
	out.println("Welcome to Pay Roll System");
%>
<%
	} else {
%>
<h1 align="center">Sorry! Ur username or password is invalid.</h1>
<CENTER>
	<input type="button" value="Back" onclick="history.back()" />
</CENTER>
<%
	}
		conn.close();
	} catch (SQLException ee) {
		out.println(ee);
	}
%>
