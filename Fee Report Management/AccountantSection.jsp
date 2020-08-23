<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.util.*"%>
<%@ page import="feereport.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<title>FeeReport</title>
</head>
<body>
	<h1 style='text-align: center;'>Accountant Section</h1>

	<FORM NAME="ADDSTUDENT"  METHOD="POST" ACTION="StudentRegister.jsp"
		style="text-align: center;">
		<button type="submit" class="btn btn-default btn-lg">Add
			Student</button>
	</FORM>
	<br>
	<FORM NAME="VIEWSTUDENTS" METHOD="POST" ACTION="ViewStudents.jsp" style="text-align: center;">
		<button type="submit" class="btn btn-default btn-lg">View Students</button>
	</FORM>
	<br>
	<FORM NAME="EDITSTUDENT" METHOD="POST" ACTION="StudentEdit.jsp"style="text-align: center;">
<div class="container">
  <button type="button" class="btn btn-default btn-lg" data-toggle="modal" data-target="#myModal">Edit Student</button>
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <h4>STUDENT UPDATING FORM<h4>
        <div class="modal-body">
       <br><label for="REGD_ID"> REGD_ID :</label> <input type="TEXT" class="form-control" NAME="REGD_ID">
       <br><br><input type="submit" value="Submit Now" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
	</FORM>
	<br>
	<FORM NAME="DUEFEE" METHOD="POST" ACTION="Due.jsp" style="text-align: center;">
		<button type="submit" class="btn btn-default btn-lg">Due Fee</button>
	</FORM>
</body>
</html>