<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.b3 {
  /* The image used */
  background-image: url("image3.jpg");

  /* Control the height of the image */
  min-height: 600px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  font-family:Comic Sans MS;
}
.b2
{
width:320px;
height:440px;
background: url();
background-size:cover;
background-position:center;
font-family:Times New Roman;
position:absolute;
transform:translate(-50%,-50%);
box-sizing:border-box;
top:50%;
left:50%;
box-sizing:border-box;
padding:0;
margin:0;
}
</style>
</head>
<body>
<div class="b3">
<h1>LOGIN HERE</h1>
<form action="AcceptUser.jsp">
<table>
<tr><td>EMAIL </td><td><input type="email" name="EMAIL" required></td></tr>
<tr><td>PASSWORD </td><td><input type="password" name="PASSWD"></td></tr><br><br>
<tr><td><br><input type="submit" name="submit" value="login"></td><td><br><a href="register.jsp">Register</a></td><tr>
</table>
</form>
</div>
</body>
</html>