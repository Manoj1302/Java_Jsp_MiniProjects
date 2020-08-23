<%@ page import = "java.util.*" %>
<%@ page import = "inventory.*" %>
<%
customer record= new customer();
record.setUSERNAME(request.getParameter("USERNAME"));
record.setPASSWD(request.getParameter("PASSWD"));
record.setMOBILE(request.getParameter("MOBILE"));
record.setEMAIL(request.getParameter("EMAIL"));

InventoryDao demo=new InventoryDao();
demo.insertlogins(record);
response.sendRedirect("login.jsp");
%>