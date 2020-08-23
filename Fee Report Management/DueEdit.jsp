<%@ page import = "java.util.*" %>
<%@ page import = "feereport.*" %>
<%

String inputId = request.getParameter("REGD_ID");

Proclass dbdemo = new Proclass();
StudentRecord record=dbdemo.viewRecord(inputId);
%>	


<HTML>
<HEAD>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</HEAD>
<BODY>

<FORM class="form-inline" NAME="DUEEDITFORM" METHOD="POST" ACTION="DueEdit2.jsp" style="text-align:center">
<div class="form-group">
    <br><label for="REGD_ID"> REGD_ID :</label> <input type="TEXT" class="form-control" NAME="REGD_ID" value="<%=inputId %>" READONLY>
    <br><br><label for="STUD_NAME">STUD_NAME:</label> <input type="TEXT" class="form-control" NAME="STUD_NAME" value="<%=record.getSTUD_NAME() %>" READONLY>
    <br><br><label for="MOBILE">  MOBILE  :</label> <input type="TEXT" class="form-control" NAME="MOBILE" value="<%=record.getMOBILE() %>" READONLY>
    <br><br><label for="EMAIL">Email:</label> <input type="email" class="form-control" NAME="EMAIL" value="<%=record.getEMAIL() %>" READONLY>
    <br><br><label for="DEPT">DEPT:</label> <input type="TEXT" class="form-control" NAME="DEPT" value="<%=record.getDEPT() %>" READONLY>
    <br><br><label for="FEE">FEE:</label> <input type="NUMBER" class="form-control" NAME="FEE" value="<%=record.getFEE() %>">
    <br><br><label for="PAID">PAID:</label> <input type="NUMBER" class="form-control" NAME="PAID" value="<%=record.getPAID() %>">
    <br><br><label for="DUE">DUE:</label> <input type="NUMBER" class="form-control" NAME="DUE" value="<%=record.getDUE() %>">
    <br><br><label for="ADDRESS"> ADDRESS :</label> <input type="TEXT" class="form-control" NAME="ADDRESS" value="<%=record.getADDRESS() %>" READONLY>
    <br><br><label for="CITY">CITY:</label> <input type="TEXT" class="form-control" NAME="CITY" value="<%=record.getCITY() %>" READONLY>
    <br><br><label for="STATE">STATE:</label> <input type="TEXT" class="form-control" NAME="STATE" value="<%=record.getSTATE() %>" READONLY>
    <br><br><label for="COUNTRY">COUNTRY:</label> <input type="TEXT" class="form-control" NAME="COUNTRY" value="<%=record.getCOUNTRY() %>" READONLY>
  </div>
<br><br><input type="submit" value="Submit Now" />
</FORM>
</BODY>