<%@ page import ="java.sql.*" %>
<%@page import="com.login.TestExcel"%>
<%@page import="java.text.ParseException"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

 <link rel="stylesheet" type="text/css" href="datepicker.css" /> 
<script type="text/javascript" src="datepicker.js"></script> 
 <title>Delete Details</title>
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
input[type=text]:focus {
    border: 2px solid #555;
}
input[list]:focus {
    border: 2px solid #555;
}
#firstDiv{
margin-top: 1.8em;
margin-left: 6em;
border: 1px solid black;
border-radius: 10px;    
width: 500px;
height: 185px;  
position: relative;
padding:10px;
background-color: #DCDCDC;
}
#secondDiv{
margin-top: 1.5em;
margin-left: 3em;
border: 1px solid black;
border-radius: 10px;    
width: 600px;
height: 100px;  
position: relative;
padding:15px;
background-color: #DCDCDC;
display :none ;
}
#FourthDiv{
margin-top: 1.5em;
margin-left: 2em;
border: 1px solid black;
border-radius: 10px;    
width: 700px;
height: 380px;  
position: relative;
padding:15px;
background-color: #DCDCDC;
display :none ;
}
#dateformat{
display :none ;
margin-left: 10em;
}
#ThirdDiv{
display :none ;
}
#subDiv{
display :none ;
}
</style>
<script>
function myFunction() {
    var empId = document.getElementById("empid").value;
var url ="LoadDetails.jsp?empId="+empId;  
if(window.XMLHttpRequest){  
request=new XMLHttpRequest();  
}  
else if(window.ActiveXObject){  
request=new ActiveXObject("Microsoft.XMLHTTP");  
}  
try  
{  
request.onreadystatechange=getInfo;  
request.open("POST",url,true);  
request.send();  
}  
catch(e)  
{  
alert("Unable to connect to server");  
}  
}  
function getInfo(){  
if(request.readyState==4){  
var val = request.responseText; 
var s = val.split("#$");
if(s.length>0){
document.getElementById("firstname").value=s[0];
document.getElementById("lastname").value=s[1];
document.getElementById("contactno").value=s[2];
document.getElementById("location").value=s[3];
}
}
}
function validate()
{
	var emp_id= document.getElementById("empid").value;
	if(emp_id == "")
	{
	alert("Select EmployeeId!");
	return false;
	}

    if(emp_id != ""){
		var j=0;
		var employees = document.getElementById("employees");
		var length = employees.options.length;
		   for(var i=0;i<length;i++)
			 {
			 if(emp_id == employees.options[i].value)
				 {
				 j=i+1;
				 }
			 }  
		   if(j == 0){
			   alert("EmployeeID Not Exist (or) Already Received!");
			   return false;
		   }
		}
	document.getElementById("myButton").disabled = true;
}
</script>
</head>
<body>
<%  String empid =(String)session.getAttribute("username");
 %>
<form action="deleteDetails.jsp"  method="post" name="upload" onsubmit="return validate()">
<!-- <div id="firstDiv"> -->
<div style="margin-left:270px;border-radius:5px;margin-top:18px;width:50%;text-align:center;background-color: #f1f1f1;" >
<br>
<center><h3>Delete Details</h3></center>
<center>
<table id="firstTable">
 <tr>
   <td><font face="Sans-serif" size="2px">Employee Id</font></td><td>:</td><td>
   <input list="employees" id="empid" name="empid" oninput="myFunction()" style="width: 11em">
<datalist id="employees">
  <option value="">----------select---------</option>
  <%
Connection con = null;
Class.forName(TestExcel.getProperties("loader"));
con = DriverManager.getConnection(TestExcel.getProperties("url"),TestExcel.getProperties("uname"),TestExcel.getProperties("pwd")); 
Statement st= con.createStatement(); 
ResultSet rs =null;
	rs = st.executeQuery("select empid from employee");

while(rs.next()){
		%>
	<option value="<%=rs.getString(1) %>"><%=rs.getString(1) %></option>
	<%
}
%>
</datalist>
</td>
 </tr>
 <tr>
   <td><font face="Sans-serif" size="2px">First Name</font></td><td>:</td>
   <td><input type="text" name="firstname" id="firstname" /></td>
 </tr>
 <tr>
   <td><font face="Sans-serif" size="2px">Last Name</font></td><td>:</td>
   <td><input type="text" name="lastname" id="lastname" /></td>
 </tr>
  <tr><td><font face="Sans-serif" size="2px">contactNo</font></td><td>:</td>
  <td><input style="width: 11em" type="text" name="contactno" id="contactno" ></td></tr>
 <tr>
   <td><font face="Sans-serif" size="2px">Location</font></td><td>:</td>
   <td><input type="text" name="location" id="location"/></td>
 </tr>
 </table>
 </center>
 <br>
   <center><button type="submit" id="myButton" style="background-color: #DCDCDC">Delete</button>
   <br>
   <br>
 </center>
 </div>
 </form>

 </body>
</html>