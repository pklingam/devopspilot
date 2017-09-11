<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee Portal</title>
<style>
h2{
  margin-left: 15em;
  margin-top: 8em;
}
#footer {
   position:fixed;
   bottom:15px;
   width:100%;
   height:15px;   /* Height of the footer */
   margin-left: 23em;
}
</style>
</head>
<body>
<%String username =  (String)session.getAttribute("username");
if(username!=null){ %>
<h2><font color="blue">Welcome To  Portal.</font></h2>
<%} %>

</body>
</html>