<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee  Portal</title>
<style>
   #left{
          display: block;
          float:left; 
          width:24%;
    }
    #right{
          display: block;
          float:right; 
          width:14%;
       }
    img{
float:left; 
height:90px;
width:70px;
}
#example1 {
 float:left; 
 width:50%;
 height: 30px;	
 overflow: hidden;
 position: relative;
}
#example1 p {
 position: absolute;
 width: 50%;
 margin: 0;
 line-height: 22px;
 text-align: center;
 color: #B8860B;
 /* Starting position */
 -webkit-transform:translateX(100%);	
 /* Apply animation to this element */	
 -webkit-animation: example1 8s linear infinite;
 animation: example1 8s linear infinite;
}


@keyframes example1 {
 0%   { 
 -moz-transform: translateX(100%); /* Firefox bug fix */
 -webkit-transform: translateX(100%); /* Firefox bug fix */
 transform: translateX(100%); 		
 }
 100% { 
 -moz-transform: translateX(-100%); /* Firefox bug fix */
 -webkit-transform: translateX(-100%); /* Firefox bug fix */
 transform: translateX(-100%); 
 }
}
#threediv{
width:100%;
height:90px;
}
#td1{
    
    border: 2px solid #B8860B;
        width:180px;  
        background-color: #DCDCDC;
} 


#myul {
    list-style-type: none;
    margin:0;
    padding: 0;
    overflow: hidden;
    background-color:#8FBC8F;
    width:350px;
    
}
li{
  
margin-left:2em;
float:left;
}

li a {
    color:black;
    display: inline-block;
    text-decoration: none;
}
li a:hover {
    /* background-color: #555; */
    color: white;
}
</style>

</head>

       
 <body>
<form>
<div id="threediv">
<div></div>
<div id="example1"><p><font size="2">Welcome</font></p>
</div>
<div id="right">
<a href="javascript:home()"><font size="2">Home</font></a>|
<a href="javascript:password()"><font size="2">Password</font></a>|
<a href="javascript:logout()"><font size="2">Logout</font></a>
</div>
</div>
<table id="accesscard" align="center">
<tr><td id="td1"><b>MissionD</b></td><td></td>
</tr>
</table>
<table align="center">
<tr><td>

<ul id="myul">
  <li><b><a href="javascript:issue()">create</a></b></li>
  <li><b><a href="javascript:modify()">Modify</a></b></li>
  <li><b><a href="javascript:deleted()">Delete</a></b></li>
  <li><b><a href="javascript:view()">View</a></b></li>
</ul>
</td></tr>
</table>
<input type="hidden" name="uname" id="uname"/>
<input type="hidden" name="oldpwd" id="oldpwd"/>
<input type="hidden" name="newpwd" id="newpwd"/>
<input type="hidden" name="confirmpwd" id="confirmpwd">
</form>
<script>
function password()
{
	window.open("password.jsp","MsgWindow", "width=350, height=200");
	}
	function issue()
	{
		parent.bottom_frame.location="createUser.jsp";
	}
	function view()
	{
		parent.bottom_frame.location="List1.jsp";
	}
	function modify()
	{
		parent.bottom_frame.location="modify.jsp";
	}
	function deleted()
	{
		parent.bottom_frame.location="deleteUser.jsp";
	}
	
	function home()
	{
		self.parent.location="Home.jsp";
	}
	function logout()
	{
		self.parent.location="Logout.jsp";
	}
</script>

</body>
</html>