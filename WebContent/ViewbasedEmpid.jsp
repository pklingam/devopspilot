<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>View Page</title>
<style>

#empTable,th,td{
border: 1px solid #8FBC8F;
    border-collapse: collapse;
      font-size: 1.0em;
}
font{
color:red;
}
</style>
</head>
<body>
<%
String employeeId = request.getParameter("employeeId");
Connection con = null;
Class.forName(TestExcel.getProperties("loader"));
con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
Statement st = con.createStatement();
ResultSet rs = null;

rs = st.executeQuery("select * from employee where empid='"+employeeId+"'"); 

if (!rs.isBeforeFirst() ) {    
	 out.println("<html><center><font color='#DEB887'>No Data Is Available For This EmployeeId</font></center><br><html>");           
}
else{
%>
<form>
<center>
<table id="empTable" >
<tr bgcolor="#DCDCDC">
<th align="center">Employee ID</th>
<th align="center">FirstName</th>
<th align="center">LastName</th> 
<th align="center">Contact No</th>
<th align="center">Location</th>
</tr>
<%
while(rs.next()){%>
	
	     <tr>
              <td><%=rs.getString(2)%></td>
              <td><%=rs.getString(3)%></td>
              <td><%=rs.getString(4)%></td>
              <td><%=rs.getString(5)%></td>
               <td><%=rs.getString(6)%></td>		 
 </tr>
 <%
 }
} %>
</table>
</center>
</form>

</body></html>
