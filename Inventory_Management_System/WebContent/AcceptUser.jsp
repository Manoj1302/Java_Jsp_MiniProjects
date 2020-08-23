<%@ page import = "java.util.*" %>
<%@ page import = "inventory.*" %>
<%
customer record= new customer();
String mailid=request.getParameter("EMAIL");
String pwd=request.getParameter("PASSWD");

MainClass obj=new MainClass();
String pssd=obj.userAccept(mailid);
if(pwd.equals(pssd))
	response.sendRedirect("UserSection.jsp");
else
{
	out.println("INVALID PASSWORD OR EMAIL");
	
}
	
%>