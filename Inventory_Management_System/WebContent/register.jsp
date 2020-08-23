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
  background-image: url("image4.jpg");

  /* Control the height of the image */
  min-height: 600px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
  font-family:Comic Sans MS;
}
</style>
</head>
<body>
<div class="b3">
<form action="register1.jsp">
<table>
<br><tr><td>USER NAME </td><td><input type="text" name="USERNAME" required></td></tr>
<br><tr><td>PASSWORD </td><td><input type="password" name="PASSWD" required></td></tr>
<br><tr><td>CONTACT </td><td><input type="text" name="MOBILE" required></td></tr>
<br><tr><td>EMAIL ID </td><td><input type="email" name="EMAIL" required></td></tr>
<br><tr><td><input type="submit" name="submit" value="Register"></td><td></td><tr>
</table>
</form>
</div>
</body>
</html>