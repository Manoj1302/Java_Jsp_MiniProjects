<%@ page import = "java.util.*" %>
<%@ page import = "inventory.*" %>	


		
<% 
		InventoryDao demo=new InventoryDao();
		out.println("*****THE PRODUCTS THAT ARE PRESENTLY AVAILABLE*****");
		out.println(" ");
		out.println(" ");
		out.println(" ");
		out.println(" ");
		out.println(" ");


		ArrayList result=demo.showInventory("select * from products;");
		out.println("<html><body><table><tr><td>PROD_ID</td> <td>PRODUCT</td><td>QUANTITY</td><td>PRICE</td></tr>");
		
		for(int i=0;i<result.size();i++)
		{
			InventoryRecord record =(InventoryRecord)result.get(i);
			
			out.println("<tr><td>"+record.getPID()+"</td><td>"+record.getPROD_NAME()+"</td><td>"+record.getPROD_QTY()+"</td><td>"+record.getPROD_COST()+"</td></tr>");	
			
		}
		out.println("</table></body></html>");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		out.println("");
		

		
		
	%>