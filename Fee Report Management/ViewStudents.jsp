<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="feereport.*"%>
<!DOCTYPE html>
<html>
<% 
Proclass obj=new Proclass();
ArrayList result=obj.viewStudents("select * from student;");
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

<div class="container">
<table class="table table-striped">
<thead>
	<tr>
		<th>REGD_ID</th>
		<th>STUD_NAME</th>
		<th>MOBILE</th>
		<th>EMAIL</th>
		<th>DEPT</th>
		<th>FEE</th>
		<th>PAID</th>
		<th>DUE</th>
		<th>ADDRESS</th>
		<th>CITY</th>
		<th>STATE</th>
		<th>COUNTRY</th>
	</tr>
</thead>
	<tr>
			<%
	for(int i=0;i<result.size();i++)
	{
		StudentRecord record= (StudentRecord)result.get(i);
	%>
	<tr>
		<td><%=record.getREGD_ID() %></td>
		<td><%=record.getSTUD_NAME() %></td>
		<td><%=record.getMOBILE() %></td>
		<td><%=record.getEMAIL() %></td>
		<td><%=record.getDEPT() %></td>
		<td><%=record.getFEE() %></td>
		<td><%=record.getPAID() %></td>
		<td><%=record.getDUE() %></td>
		<td><%=record.getADDRESS() %></td>
		<td><%=record.getCITY() %></td>
		<td><%=record.getSTATE() %></td>
		<td><%=record.getCOUNTRY() %></td>
	</tr>
	<%
	}
	%>
	</tr>
</table>
</div>
</BODY>