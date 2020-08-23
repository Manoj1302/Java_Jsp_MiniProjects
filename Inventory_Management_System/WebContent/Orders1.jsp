<%@ page import = "java.util.*" %>
<%@ page import = "inventory.*" %>
<%
admin ad= new admin();
ad.setODNAME(request.getParameter("ODNAME"));
ad.setODEMAIL(request.getParameter("ODEMAIL"));
ad.setORD(request.getParameter("ORD"));

MainClass obj=new MainClass();
obj.insertorder(ad);
response.sendRedirect("Ordered.jsp");
%>