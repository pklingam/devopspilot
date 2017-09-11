
<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>

<%
String empId = request.getParameter("empId");

 Connection con = null;
Class.forName(TestExcel.getProperties("loader"));
con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
Statement st = con.createStatement(); 
String qry ="select firstname,lastname,contactno,location from employee where empid='"+empId+"'";

ResultSet rs=st.executeQuery(qry); 

 if (!rs.isBeforeFirst() ) {    
	 out.println("#$"+"#$"+"#$");
}
else{
while(rs.next()){
	 out.println(rs.getString(1)+"#$"+rs.getString(2)+"#$"+rs.getString(3)+"#$"+rs.getString(4));
}
} 
%>
