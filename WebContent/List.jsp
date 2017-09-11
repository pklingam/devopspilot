<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<title>Insert title here</title>
<style>
table{
 border: 1px solid #B8860B;
    border-collapse: collapse;
    width: 300px;
    font-size: 0.9em;
}
th, td {
    border: 1px solid #B8860B;
    border-collapse: collapse;
}

</style>
</head>
<body>
<%  String empid =(String)session.getAttribute("username");
 %>
<form name="listForm" id="listForm" method="post">
<center>
<table>
<tr bgcolor="#DCDCDC">
<td align="center" colspan="2"><b>User Details</b></td>
</tr>
</table>
<br>
 <div id="empdiv">
 <b>Employee ID:</b>
    <input type="text"  name="empid" id="empid"/>
 </div>
 <br>
<input type="button" value="Submit"  style="background-color: #DCDCDC" onclick="loadDetails()"/>
</center>
<br>
</form>
<script>
function loadDetails()
{
	
		var employeeid=document.getElementById("empid").value;
		var url="ViewbasedEmpid.jsp?employeeId="+employeeid;
		parent.list_bottom.location=url;
		
}
</script>
</body>
</html>