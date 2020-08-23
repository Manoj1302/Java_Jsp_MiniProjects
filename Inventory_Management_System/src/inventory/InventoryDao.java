package inventory;

import java.sql.*;
import java.util.ArrayList;

public class InventoryDao {
	public Connection getConnection() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","Manoj@0203");
		return con;
	}
	public ArrayList showInventory(String inputQuery) throws Exception
	{
		Connection con=getConnection();
		ArrayList result= new ArrayList();
		PreparedStatement ps=con.prepareStatement(inputQuery);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			InventoryRecord record =new InventoryRecord();
			record.setPID(rs.getInt("PID"));
			record.setPROD_NAME(rs.getString("PROD_NAME"));
			record.setPROD_QTY(rs.getInt("PROD_QTY"));
			record.setPROD_COST(rs.getInt("PROD_COST"));
			result.add(record);
			
		}
		con.close();
		ps.close();
		return result;
	}
	public String userAccept(String mail) throws Exception
	{
		Connection con =getConnection();
		PreparedStatement ps= con.prepareStatement("select PASSWD from loginid where (EMAIL='"+mail+"');");
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			String pwd=rs.getString("PASSWD");
			con.close();
			ps.close();
			rs.close();
			return pwd;
		}
		con.close();
		ps.close();
		rs.close();
		return null;
	}
	public void insertlogins(customer record) throws Exception
	{
		Connection con=getConnection();
		PreparedStatement ps= con.prepareStatement("insert into loginid (USERNAME,PASSWD,MOBILE,EMAIL) values (?,?,?,?);");
		ps.setString(1, record.getUSERNAME());
		ps.setString(2, record.getPASSWD());
		ps.setString(3, record.getMOBILE());
		ps.setString(4, record.getEMAIL());
		ps.execute();
		con.close();
		ps.close();
	}
	public static void main(String args[]) throws Exception
	{
		InventoryDao demo=new InventoryDao();
	}
}
