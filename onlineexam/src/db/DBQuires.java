package db;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import bean.Questionbean;
import bean.Student;

public class DBQuires {

	public ArrayList<Questionbean> getQuestions(String testname){
		
		
		
		
		
		
		
		
		// TODO Auto-generated method stub
		Connection conn=null;
		ArrayList<Questionbean> qbean= new ArrayList<Questionbean>();
		System.out.println(testname);
		testname= "subjective";
		try{
	DAO dao = new DAO();
	 conn=dao.getConnection();
	
	String query= "SELECT * FROM question where type='"+testname+"'  ORDER BY RAND() LIMIT 5 ";
	PreparedStatement pstmt = conn.prepareStatement(query);
	System.out.println(pstmt.toString());
	//pstmt.setString(1, testname);
	ResultSet rs= pstmt.executeQuery();
	while(rs.next())
	{
		
		Questionbean bean = new  Questionbean();
	bean.setQid(rs.getString(1));
		bean.setQname(rs.getString(2));
		/*bean.setOption1(rs.getString(3));
		bean.setOption2(rs.getString(4));
		bean.setOption3(rs.getString(5));
		bean.setOption4(rs.getString(6));
		bean.setAns(rs.getString(7));
		*/qbean.add(bean);
		
	
	
	
	}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
		try{
		conn.close();
		}catch(Exception e)
		{
			
		}
	return qbean;
}

	public void insertValues(String mobile, String name, String filename, String action1) throws SQLException {
		// TODO Auto-generated method stub
		String data[]=null;
		try  
		{  
		File file=new File(filename);    //creates a new file instance  
		FileReader fr=new FileReader(file);   //reads the file  
		BufferedReader br=new BufferedReader(fr);  //creates a buffering character input stream  
		StringBuffer sb=new StringBuffer();    //constructs a string buffer with no characters  
		String line;  
		while((line=br.readLine())!=null)  
		{  
		sb.append(line);      //appends line to string buffer  
		//sb.append("\n");
		break;//line feed   
		}  
		 data = sb.toString().replaceAll("\\[", "").replaceAll("\\]", "").replaceAll(" ", "").split(",");
		fr.close();    //closes the stream and release the resources  
		System.out.println("Contents of File: ");  
		System.out.println();   //returns a string that textually represents the object  
		}  
		catch(IOException e)  
		{  
		e.printStackTrace();  
		} 
		DAO dao = new DAO();
		 Connection conn=dao.getConnection();
		String insertquery="insert into result values(?,?,?,?,?,?,?,?)";
		PreparedStatement pstmt=null;
		
			pstmt=conn.prepareStatement(insertquery);;
			pstmt.setString(1,mobile);
			pstmt.setString(2,name);
			pstmt.setString(3,data[0]);
			pstmt.setString(4,data[1]);
			pstmt.setString(5,"0");
			pstmt.setString(6,"0");
			pstmt.setString(7,"0");
			pstmt.setString(8,action1);
			pstmt.executeUpdate();
	}

	public ArrayList<Student> getDetails(String date,String tablename) throws Exception {
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		 Connection conn=dao.getConnection();
		 ArrayList<Student> studList = new ArrayList<Student>();
		 String query= "SELECT distinct time,user FROM "+tablename+" where time=?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, date);
			System.out.println(pstmt.toString());
			ResultSet rs= pstmt.executeQuery();
			while(rs.next())
			{	
				Student stud = new Student();
				stud.setName(rs.getString(1));
				stud.setPhno(rs.getString(2));
			studList.add(stud);
			
			
			}
			return studList;
		}

	public String getProfession(String attribute) {
		
		
		try{
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		 Connection conn=dao.getConnection();
		 ArrayList<Student> studList = new ArrayList<Student>();
		 String query= "SELECT prof  FROM registration where emailid=?";
			PreparedStatement pstmt = conn.prepareStatement(query);
			pstmt.setString(1, attribute);
			System.out.println(pstmt.toString());
			ResultSet rs= pstmt.executeQuery();
			while(rs.next())
			{	
				return rs.getString(1);
			
			
			
			}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
			return "All";
	}
}
