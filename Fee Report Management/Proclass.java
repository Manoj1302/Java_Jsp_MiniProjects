package feereport;

import java.sql.*;
import java.util.ArrayList;

public class Proclass {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/srkr", "root", "sandy99590");
		return con;
	}

	public void closeConnection(Connection con) throws Exception {
		con.close();
	}
	public void addStudent(StudentRecord record) throws Exception{
		Connection con=getConnection();
		String inputQuery="insert into student (REGD_ID,STUD_NAME,MOBILE,EMAIL,DEPT,FEE,PAID,DUE,ADDRESS,CITY,STATE,COUNTRY,REGISTER_DATE) values (?,?,?,?,?,?,?,?,?,?,?,?,NOW());";
		PreparedStatement ps=con.prepareStatement(inputQuery);
		ps.setString(1, record.getREGD_ID());
		ps.setString(2, record.getSTUD_NAME());
		ps.setString(3, record.getMOBILE());
		ps.setString(4, record.getEMAIL());
		ps.setString(5, record.getDEPT());
		ps.setInt(6, record.getFEE());
		ps.setInt(7, record.getPAID());
		ps.setInt(8, record.getDUE());
		ps.setString(9, record.getADDRESS());
		ps.setString(10, record.getCITY());
		ps.setString(11, record.getSTATE());
		ps.setString(12, record.getCOUNTRY());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public StudentRecord viewRecord(String REGD_ID) throws Exception
	{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student where (REGD_ID=?)");
		ps.setString(1, REGD_ID);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
		{
			StudentRecord record =new StudentRecord();
			record.setREGD_ID(rs.getString("REGD_ID"));
			record.setSTUD_NAME(rs.getString("STUD_NAME"));
			record.setMOBILE(rs.getString("MOBILE"));
			record.setEMAIL(rs.getString("EMAIL"));
			record.setDEPT(rs.getString("DEPT"));
			record.setFEE(rs.getInt(6));
			record.setPAID(rs.getInt(7));
			record.setDUE(rs.getInt(8));
			record.setADDRESS(rs.getString("ADDRESS"));
			record.setCITY(rs.getString("CITY"));
			record.setSTATE(rs.getString("STATE"));
			record.setCOUNTRY(rs.getString("COUNTRY"));
			closeConnection(con);
			ps.close();
			return record;
		}
		closeConnection(con);
		ps.close();
		return null;
	}
	public ArrayList viewStudents(String inputQuerey) throws Exception
	{
		ArrayList resultlist= new ArrayList();
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement(inputQuerey);
		ResultSet rs=ps.executeQuery();
		while(rs.next())
		{
			StudentRecord record =new StudentRecord();
			record.setREGD_ID(rs.getString("REGD_ID"));
			record.setSTUD_NAME(rs.getString("STUD_NAME"));
			record.setMOBILE(rs.getString("MOBILE"));
			record.setEMAIL(rs.getString("EMAIL"));
			record.setDEPT(rs.getString("DEPT"));
			record.setFEE(rs.getInt(6));
			record.setPAID(rs.getInt(7));
			record.setDUE(rs.getInt(8));
			record.setADDRESS(rs.getString("ADDRESS"));
			record.setCITY(rs.getString("CITY"));
			record.setSTATE(rs.getString("STATE"));
			record.setCOUNTRY(rs.getString("COUNTRY"));
			resultlist.add(record);
		}
		closeConnection(con);
		ps.close();
		rs.close();
		return resultlist;
	}
	
	public void updateStudent(StudentRecord record) throws Exception{
		Connection con=getConnection();
		String inputQuery="update student set STUD_NAME=?,MOBILE=?,EMAIL=?,DEPT=?,FEE=?,PAID=?,DUE=?,ADDRESS=?,CITY=?,STATE=?,COUNTRY=? where (REGD_ID=?);";
		PreparedStatement ps=con.prepareStatement(inputQuery);
		ps.setString(1, record.getSTUD_NAME());
		ps.setString(2, record.getMOBILE());
		ps.setString(3, record.getEMAIL());
		ps.setString(4, record.getDEPT());
		ps.setInt(5, record.getFEE());
		ps.setInt(6, record.getPAID());
		ps.setInt(7, record.getDUE());
		ps.setString(8, record.getADDRESS());
		ps.setString(9, record.getCITY());
		ps.setString(10, record.getSTATE());
		ps.setString(11, record.getCOUNTRY());
		ps.setString(12, record.getREGD_ID());
		ps.execute();
		ps.close();
		closeConnection(con);
	}
	public static void main(String[] args) throws Exception {
		
		Proclass obj=new Proclass();
	}

}
