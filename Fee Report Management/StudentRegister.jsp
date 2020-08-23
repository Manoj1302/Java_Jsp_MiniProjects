<HTML>
<HEAD>
<meta charset="utf-8">
  <meta NAME="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</HEAD>
<BODY>


<h1 style='text-align:center'>STUDENT REGISTRATION FORM</h1>
<FORM class="form-inline" NAME="STUDENTREGISTERFORM" METHOD="POST" ACTION="StudentRegister2.jsp" style="text-align:center">

<div class="form-group">
    <br><label for="REGD_ID"> REGD_ID :</label> <input type="TEXT" class="form-control" NAME="REGD_ID" required>
    <br><br><label for="STUD_NAME">STUD_NAME:</label> <input type="TEXT" class="form-control" NAME="STUD_NAME" required>
    <br><br><label for="MOBILE">  MOBILE  :</label> <input type="TEXT" class="form-control" NAME="MOBILE">
    <br><br><label for="EMAIL">Email:</label> <input type="email" class="form-control" NAME="EMAIL">
    <br><br><label for="DEPT">DEPT:</label> <input type="TEXT" class="form-control" NAME="DEPT" required>
    <br><br><label for="FEE">FEE:</label> <input type="NUMBER" class="form-control" NAME="FEE" required>
    <br><br><label for="PAID">PAID:</label> <input type="NUMBER" class="form-control" NAME="PAID"required>
    <br><br><label for="DUE">DUE:</label> <input type="NUMBER" class="form-control" NAME="DUE"required>
    <br><br><label for="ADDRESS"> ADDRESS :</label> <input type="TEXT" class="form-control" NAME="ADDRESS">
    <br><br><label for="CITY">CITY:</label> <input type="TEXT" class="form-control" NAME="CITY">
    <br><br><label for="STATE">STATE:</label> <input type="TEXT" class="form-control" NAME="STATE">
    <br><br><label for="COUNTRY">COUNTRY:</label> <input type="TEXT" class="form-control" NAME="COUNTRY">
  </div>
<br><br><input type="submit" value="Submit Now" />
</FORM>
</BODY>
</HTML>