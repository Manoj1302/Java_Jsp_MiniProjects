<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<form action="Orders1.jsp">
<table>
<br><tr><td>NAME </td><td><input type="text" name="ODNAME"></td></tr>
<br><tr><td>EMAIL ID </td><td><input type="email" name="ODEMAIL"></td></tr>
<br><tr><td>ORDER DETAILS </td><td><input type="text" name="ORD"></td></tr>
<br><tr><td><input type="submit" name="submit" value="Order now"></td><td></td></tr>
</table>
</form>
</body>
</html>