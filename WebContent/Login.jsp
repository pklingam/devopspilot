<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JAVA WEB APPs</title>
<style>
#first {
	background-color: #FFFFFF;
	height: 14.5em;
	margin-top: 12em;
	margin-left: 21em;
	margin-right: 21em;
}
</style>
</head>
<body bgcolor="#999999">
	<form name="loginForm" action="LoginCheck.jsp" method="post"
		onsubmit="javascript:return validate()">
		<div id="first">
		 <br>
			<center>
				<table>
					<tr>
						<td><font size="2px">User Name</font></td>
						<td>:</td>
						<td><input type="text" name="username" id="username" /></td>
					</tr>
					<tr>
						<td><font size="2px">Password</font></td>
						<td>:</td>
						<td><input type="password" name="password" id="password" /></td>
					</tr>
					<tr></tr>
				</table>
			</center>
			<br>
			<center>
				<table>
					<tr>
						<td><input type="submit" id="login" value="Login" /></td>
					</tr>
				</table>
			</center>
			<br> <br> <br> <br>
		</div>
	</form>
	<script>
	function validate()
     {
		var uname = document.getElementById("username").value;
		var pwd = document.getElementById("password").value;
		if(uname == "" || pwd == ""){
            alert("Please Enter UserName or Password!"); 
            uname.focus(); 
			return false;			
		}
		
		    }
	</script>
</body>
</html>
