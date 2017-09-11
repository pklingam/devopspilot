<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String uname = request.getParameter("param1");
  String oldpwd = request.getParameter("param2");
  String newpwd = request.getParameter("param3");
  String confirmpwd = request.getParameter("param4");
  Connection con = null;
  try{
  Class.forName(TestExcel.getProperties("loader"));
  con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
  Statement st = con.createStatement(); 
  String qry = "update LOGIN set password='"+newpwd+"' where user_id='"+uname+"' and password='"+oldpwd+"'";
  st.executeUpdate(qry); 
  System.out.println("updated successfully");

  }
  catch(Exception e)
  {
	  e.printStackTrace();
	  System.out.println(e);
	  out.println("Some Error Occurred, password is not changed");
  }
  finally{
	  con.close();
  }
%>
</body>
</html>