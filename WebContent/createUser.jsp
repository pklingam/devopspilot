<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  
<link rel="stylesheet" type="text/css" href="datepicker.css" /> 
<script type="text/javascript" src="datepicker.js"></script> 
<title>Insert title here</title>

<style>

input[type=text] {
        width: 100%;
    padding: 3px 2px;
    margin: 3px 0;
    box-sizing: border-box;
    border: 2px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
    border-radius:5px
}
input[list] {
    width: 100%;
    padding: 3px 2px;
    margin: 3px 0;
    box-sizing: border-box;
    border: 2px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.5s;
    outline: none;
    border-radius:5px
}
#location{
 width: 100%;
    padding: 3px 2px;
    margin: 3px 0;
    box-sizing: border-box;
    border: 2px solid #ccc;
    -webkit-transition: 0.5s;
    transition: 0.7s;
    outline: none;
    border-radius:5px
}
input[type=text]:focus {
    border: 2px solid #555;
}
input[list]:focus {
    border: 2px solid #555;
}

</style>
<script>
function validate()
{
    var firstName = document.myform.firstname.value;
    var lastName = document.myform.lastname.value;
    var empId = document.myform.empid.value;
    var contactno = document.myform.contactno.value;
    var location = document.myform.location.value;
    
	if(empId == "")
	{
	alert("Enter EmployeeId!");
	return false;
	}
	
	if(firstName == "")
	{
	alert("Enter FirstName!");
	return false;
	}
	if(lastName == "")
	{
	alert("Enter LastName!");
	return false;
	}
    if(contactno == "")
	{
	alert("Enter Contact No!");
	return false;
	}
   
	if(location == "")
	{
	alert("Select Location!");
	return false;
	}
	document.getElementById("myButton").disabled = true;
}
</script>
</head>
<body>
<form action="UserDetailsStore.jsp" method="post" name="myform" onsubmit="return validate()">
  <div style="margin-left:280px;border-radius:5px;margin-top:18px;width:50%;text-align:center;background-color: #f1f1f1;" >
 <br>
<center><h3>User Details</h3></center> 
<center>
<table>
 <tr><td><font face="Sans-serif" size="2px">Employee ID</font></td><td>:</td><td><input type="text" name="empid"></td></tr>
 <tr><td><font face="Sans-serif" size="2px">First Name</font></td><td>:</td><td><input type="text" name="firstname"></td></tr>
 <tr><td><font face="Sans-serif" size="2px">Last Name</font></td><td>:</td><td><input type="text" name="lastname"></td></tr>
 <tr><td><font face="Sans-serif" size="2px"> Contact No</font></td><td>:</td><td><input type="text" name="contactno"></td></tr>
<tr>
   <td><font face="Sans-serif" size="2px">Location</font></td><td>:</td>
   <td>
   <select style="width: 150px" name="location" id="location">
    <option value="">---------All------------</option>
  <option value="Hyderabad">HYDERABAD</option>
  <option value="Bangalore">BANGALORE</option>
  <option value="Pune">PUNE</option>
  <option value="Delhi">DELHI</option>
   </select> 
   </td>
   </tr> </table>
 <br>
  <table><tr>
  <td></td><td><td><button type="submit" id="myButton" style="background-color: #DCDCDC">Submit</button></td>
 </tr>
</table> 
</center>
</div>
</form>
</body>
</html>