<%@ page import = "java.util.*" %>
<%@ page import = "feereport.*" %>
<%
StudentRecord record = new StudentRecord();
record.setREGD_ID(request.getParameter("REGD_ID"));
record.setSTUD_NAME(request.getParameter("STUD_NAME"));
record.setMOBILE(request.getParameter("MOBILE"));
record.setEMAIL(request.getParameter("EMAIL"));
record.setDEPT(request.getParameter("DEPT"));
int fee=Integer.parseInt(request.getParameter("FEE"));
int paid=Integer.parseInt(request.getParameter("PAID"));
int due=Integer.parseInt(request.getParameter("DUE"));
record.setFEE(fee);
record.setPAID(paid);
record.setDUE(due);
record.setADDRESS(request.getParameter("ADDRESS"));
record.setCITY(request.getParameter("CITY"));
record.setSTATE(request.getParameter("STATE"));
record.setCOUNTRY(request.getParameter("COUNTRY"));

Proclass demo=new Proclass();
demo.addStudent(record);
response.sendRedirect("AccountantSection.jsp");
%>