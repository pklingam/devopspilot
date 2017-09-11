<%@ page import ="java.sql.*" %>
<%@ page import="com.login.TestExcel"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.net.UnknownHostException"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
InetAddress ipAddr = InetAddress.getLocalHost();
String val="http://"+ipAddr.getHostAddress()+":8080/MissionD/";
Connection con = null;
String username = request.getParameter("username"); 
username = username.toLowerCase();
String password = request.getParameter("password"); 
TestExcel mrn =new TestExcel();
Class.forName(TestExcel.getProperties("loader"));
con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
Statement st = con.createStatement(); 
ResultSet rs = st.executeQuery("select * from login where user_id='"+username+"' and password='"+password+"'"); 
if(rs.next()) 
{ 
	session.setAttribute("username",username); 
    response.sendRedirect("Home.jsp");
} 
else 
{
%>
<center> Invalid Username or Password.
 <a href=<%=val%>>Login</a>
</center>
<% }
%>
</body>
</html>