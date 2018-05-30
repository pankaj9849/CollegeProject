<%@ page contentType="text/html; charset=iso-8859-1" language="java"
	import="java.sql.*" errorPage=""%>
<html>
<head>
<title>Employee Personal Master</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<script language="JavaScript">
	function back() {
		document.employee.action = "./registration.jsp";
		document.employee.submit();
	}
	function empsave() {
		document.employee.action = "./emp.jsp";
		document.employee.submit();
	}
	function delete1() {
		document.employee.action = "./deleteemp.jsp";
		document.employee.submit();
	}
	function idcheck() {
		var id = document.employee.empid.value;
		if (!isNaN(id)) {
			alert("Plz enter a value which start with string");
			document.employee.empid.focus();
			document.employee.empid.value = "";
		}
	}
	function namecheck() {
		var name = document.employee.empname.value;
		if (!isNaN(name)) {
			alert("Plz enter a value which start with string");
			document.employee.empname.focus();
			document.employee.empname.value = "";
		}
	}
</script>
</head>
<body bgcolor="#FFFFCC">
	<form name="employee">
		<font color="#FFFFFF"></font>
		<center>
			<h1>PAY ROLL SYSTEM</h1>
			<hr>
			<h2>
				<font color="#800000"></font>Employee Personal Master
			</h2>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/payrol", "root", "");
				System.out.println("db connectd");
				Statement st = con.createStatement();
				Statement st1 = con.createStatement();
				Statement st2 = con.createStatement();
				ResultSet rs = st2.executeQuery("select deptcode from deptmaster");
				ResultSet rs2 = st.executeQuery("select desncode from desnmaster");
				ResultSet rs1 = st1.executeQuery("select gcode from grade");
			%>
			<table>
				<tr>
					<td></td>
					<td><font color="#800000">&nbsp;</font><font color="#800000"><b>Employee
								Code</b></font><font color="#800000" size="">&nbsp;</font></td>
					<td><input name="empid" type="text" id="empid"></td>
					<td></td>
					<td><font color="#800000"><b>Employee Name</b></font><font
						color="#800000" size=""><b></b></font><font color="#800000"
						size=""><b></b></font><font color="#800000" size="">&nbsp;</font></td>
					<td><input type="text" name="empname" onClick="namecheck()"></td>
					<td></td>
				</tr>

				<tr>
					<td><label><font color="#CC99FF"><strong>[09-sep-99]</strong></font></label></td>
					<td><font color="#800000"><b>Date of Joining</b></font></td>
					<td><input type="text" name="jdate"></td>
					<td></td>
					<td><font color="#800000" size=""><b>Date of Birth</b></font></td>
					<td><input type="text" name="dob"></td>
					<td><label><font color="#CC99FF"><strong>[09-sep-99]</strong></font></label></td>
				</tr>

				<tr>
					<td></td>
					<td><font color="#800000" size=""><b>Address</b></font></td>
					<td><input type="text" name="address"></td>
					<td></td>
					<td><font color="#800000" size=""><b>Dept Code</b></font><font
						color="#800000"><b></b></font></td>
					<td><select name="dept">
							<%
								while (rs.next()) {
							%>
							<option><%=rs.getString(1)%></option>
							<%
								}
							%>
					</select></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td><font color="#800000" size=""><b>Desn Code</b></font></td>
					<td><select name="desn">
							<%
								while (rs2.next()) {
							%>
							<option><%=rs2.getString(1)%></option>
							<%
								}
							%>
					</select></td>
					<td></td>
					<td><font color="#800000" size=""><b>Grade Code</b></font><font
						color="#800000">&nbsp;</font></td>
					<td><select name="grade">
							<%
								while (rs1.next()) {
							%>
							<option><%=rs1.getString(1)%></option>
							<%
								}
							%>
					</select></td>
					<td></td>
				</tr>

				<tr>
					<td></td>
					<td><font color="#800000" size=""><b>Salary</b></font></td>
					<td><input type="text" name="salary"></td>
					<td></td>
					<td><font color="#800000" size=""><b>PF Indicator</b></font></td>
					<td><input type="text" name="pfindicator"></td>
					<td><font color="#CC99FF"><b>[yes/No]</b></font></td>
				</tr>

				<tr>
					<td></td>
					<td><font color="#800000" size=""><b>PF Number</b></font></td>
					<td><input type="text" name="pfnumber"></td>
					<td></td>
					<td><font color="#800000" size=""><b>Casual Leaves</b></font></td>
					<td><input type="text" name="cleaves"></td>
				</tr>

				<tr>
					<td></td>
					<td><font color="#800000" size=""><b>Earned Leaves</b></font></td>
					<td><input type="text" name="eleaves"></td>
					<td></td>
					<td><font color="#800000" size=""><b>Sick Leaves</b></font></td>
					<td><input type="text" name="sleaves"></td>
					<td></td>
				</tr>
			</table>
			<br>
			<table>
				<center>
					<tr>
						<td><input type="submit" value="SAVE"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onClick="empsave()"> <input type="reset" value="ADDNEW"
							style="width: 80; height: 20; border: 1px solid #0000FF">
							<input type="submit" value="DELETE"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onClick="delete1()"> <input type="submit" value="BACK"
							style="width: 80; height: 20; border: 1px solid #0000FF"
							onClick="back()"></td>
					</tr>
				</center>
			</table>
		</center>
	</form>
</body>
</html>
