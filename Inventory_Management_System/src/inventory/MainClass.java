package inventory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MainClass {
	public Connection getConnection() throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/inventory","root","Manoj@0203");
		return con;
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
	public void insertorder(admin ad) throws Exception
	{
		Connection con=getConnection();
		PreparedStatement ps= con.prepareStatement("insert into placeorder (ODNAME,ODEMAIL,ORD) values(?,?,?);");
		ps.setString(1, ad.getODNAME());
		ps.setString(2, ad.getODEMAIL());
		ps.setString(3, ad.getORD());
		ps.execute();
		con.close();
		ps.close();
	}
	public static void main(String args[])
	{
		MainClass obj=new MainClass();
	}

}
