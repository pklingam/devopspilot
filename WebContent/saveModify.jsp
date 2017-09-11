<%@page import="com.login.TestExcel"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify Details</title>
</head>
<body>
<%

String empId = request.getParameter("empid");
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String contactno = request.getParameter("contactno");
String location = request.getParameter("location");
PreparedStatement pstm = null ;
java.sql.Connection con = null;
int sno = 0;
try{
    Class.forName(TestExcel.getProperties("loader"));
    con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
    con.setAutoCommit(false);
    String sql = "update employee set firstname='"+firstname+"',lastname='"+lastname+"',contactno='"+contactno+"',location='"+location+"' where empid='"+empId+"'";
    pstm = (PreparedStatement) con.prepareStatement(sql);
    pstm.executeUpdate();
	con.commit();
    out.println("<html><body><br><br><center>Updated successfully</center></body><html>");

}catch(Exception e)
{
	e.printStackTrace();
	con.rollback();
	out.println("Error occurred, please enter valid details.");
}
finally{
	pstm.close();
	con.close();	
}
%>
</body>
</html>