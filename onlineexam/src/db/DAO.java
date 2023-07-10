package db;


import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
/*	String username="adminxWBXqQf";
	String password="ZRs2rEDfxadH";*/
	String username="root";
	String password="tiger";
	 static final String DB_URL = "jdbc:mysql://localhost:3306/depression";
	
	public Connection getConnection()
	{
		Connection conn=null;
		   try{
			      //STEP 2: Register JDBC driver
			      Class.forName("com.mysql.jdbc.Driver");

			      //STEP 3: Open a connection
			      System.out.println("Connecting to database...");
			      conn = DriverManager.getConnection(DB_URL,username,password);
			   }
			   catch (Exception e) {
				// TODO: handle exception
				   System.out.println("Unable to connect Database");
			}
			      return conn;
		}

}
