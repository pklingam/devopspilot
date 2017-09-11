<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
td{
padding:0.5em;
}
</style>
<script>
function changePwd()
{
    var uname = document.getElementById("uname").value; 
    var oldpwd = document.getElementById("oldpwd").value; 
    var newpwd = document.getElementById("newpwd").value; 
    var confirmpwd = document.getElementById("confirmpwd").value;
    if(newpwd != confirmpwd)
    	{
    	alert("Please Enter Correct Confirm Pwd ");
    	return false;
    	}
    else{
	var url="passwordChange.jsp?param1="+uname+"&param2="+oldpwd+"&param3="+newpwd+"&param4="+confirmpwd;
	document.pwdForm.action=url;
	alert("PassWord Is Changed");
	document.pwdForm.submit();
	window.close();
    }
	}
</script>
</head>
<body>
    <form name="pwdForm" method="post">
      <table>
       <tr>
        <td>User Name:</td><td><input type="text" name="uname" id="uname"></td>
        </tr>
        <tr>
        <td>Old Password:</td><td><input type="password"  name="oldpwd" id="oldpwd"></td>
       </tr>
        <tr>
        <td>New Password:</td><td><input type="password"  name="newpwd" id="newpwd"></td>
       </tr>
        <tr>
        <td>Confirm Password:</td><td><input type="password"  name="confirmpwd" id="confirmpwd"></td>
       </tr>
       <tr><td></td><td><input type="button" value="Submit" onclick="changePwd()"/></td></tr>
      </table>
    </form>
</body>
</html>