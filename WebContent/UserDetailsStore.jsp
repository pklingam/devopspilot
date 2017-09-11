
<%@page import="com.login.TestExcel"%>
<%@page import="java.sql.*"%>

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
String firstName = request.getParameter("firstname");
String lastName = request.getParameter("lastname");
String empId = request.getParameter("empid");
String contactNo = request.getParameter("contactno");
String location = request.getParameter("location");

PreparedStatement pstm = null ;
java.sql.Connection con = null;
int sno = 0;
Statement st = null;
ResultSet rs = null;
String name=null;
try{
    Class.forName(TestExcel.getProperties("loader"));
    con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
    con.setAutoCommit(false);
    st = con.createStatement();
    String qry = "select max(sno) from employee";
    rs = st.executeQuery(qry);
    while(rs.next()){
    	sno=rs.getInt(1);
    }
    sno=sno+1;
    
    String sql = "INSERT INTO employee VALUES(?,?,?,?,?,?)";
    pstm = (PreparedStatement) con.prepareStatement(sql);
    pstm.setInt(1,sno);
    pstm.setString(2,empId.trim());
    pstm.setString(3,firstName.trim());
    pstm.setString(4,lastName.trim());
    pstm.setString(5,contactNo.trim());
    pstm.setString(6,location.trim());
    pstm.executeUpdate();
    con.commit();
  out.println("<html><body><br><br><center>Details stored successfully</center></body><html>");
}catch(Exception e)
{
	e.printStackTrace();
	con.rollback();
}
finally{
	pstm.close();
	con.close();	
}
%>
</body>
</html>