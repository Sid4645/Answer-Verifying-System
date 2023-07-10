package controller;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;

import service.LoginService;
import service.RegService;
import util.BarChart;
import bean.Emotion;
import bean.Student;
import db.DAO;
import db.DAOQuires;
import db.DBQuires;
/**
 * Servlet implementation class RegServlet
 */
public class RegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public RegServlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		String nextPath = "";
		HttpSession session = request.getSession(true);
		System.out.println(action);
		
		if(action==null)
		{
		//System.out.println("----"+request.getParameter("image"));	
		String base64String = request.getParameter("snapURL");
		
		String[] base64Array = base64String.split(",");
        String type = base64Array[0].split("/")[1].split(";")[0];
        String base64Image = base64Array[1];
        saveThisFile(base64Image, type );
      /*  Runtime.getRuntime().exec("  cmd /c start c:\\project\\personalityface.bat " + "C:\\project\\snap.png");  
		try {
			Thread.sleep(20000);
		} catch (InterruptedException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
       	System.out.println("success");
       	File f = new File("C:\\project\\data.txt");
       	Scanner s = new Scanner(f);
       	String data = "";
       	while(s.hasNextLine())
       	{
       		data = data + s.nextLine();
       	}
       	String time = "";
       	String []d = data.split("%");
       	System.out.println(d[0]);
       	System.out.println(d[2]);
       	System.out.println(d[3]);
       	System.out.println(d[4]);
       	System.out.println(d[5]);
       	System.out.println(d[6]);
       	s.close();
       	Date date1 = new Date();
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try{
       	DAO a = new DAO();
       	java.sql.Connection conn = a.getConnection();
       	String sql = "insert into personality values(?,?,?,?,?,?,?)";
       	PreparedStatement pst =  conn.prepareStatement(sql);
       	pst.setString(3, Double.parseDouble(d[0])/100+"");
       	pst.setString(4,Double.parseDouble( d[2])/100+"");
       	pst.setString(5,Double.parseDouble( d[3])/100+"");
       	pst.setString(6, Double.parseDouble(d[6])/100+"");
       	pst.setString(7,Double.parseDouble( d[0])/100+"");       	
       	pst.setString(1, (String)session.getAttribute("emailid"));
       	pst.setString(2, dateFormat.format(date1));
       	pst.executeUpdate();
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
		}*/
        
        
        nextPath = "/showrresult.jsp";
        
        
        
		}
		else if("viewchart".equalsIgnoreCase(action))
		{
			String lname =  request.getParameter("email");
			String date  = request.getParameter("time");
			//String type  = request.getParameter("type");
			double aEmotion12[] = new double[10]; 
			DAOQuires db = new DAOQuires();
			String tablename="";
		
			
			ArrayList<Emotion> aEmotion =db.getRecords(date,lname,tablename);
			
			for(int i = 0;i<aEmotion.size();i++)
			{
				System.out.println("@@@@@"+aEmotion12[0]+aEmotion12[1]+aEmotion12[2]+aEmotion12[3]+aEmotion12[4]);
				Emotion e = aEmotion.get(i);
				aEmotion12[0] = Double.parseDouble(e.getext()) +  aEmotion12[0] ;
				aEmotion12[1] = Double.parseDouble(e.getneu()) +  aEmotion12[1] ;
				aEmotion12[2] = Double.parseDouble(e.getagr()) +  aEmotion12[2] ;
				aEmotion12[3] = Double.parseDouble(e.getext()) +  aEmotion12[3] ;
				aEmotion12[4] = Double.parseDouble(e.getopn()) +  aEmotion12[4] ;
				if (i==aEmotion.size()-1)
				{
					aEmotion12[0] =  aEmotion12[0] /5 ;
					aEmotion12[1] =  aEmotion12[1]/5 ;
					aEmotion12[2] = aEmotion12[2] /5;
					aEmotion12[3] =  aEmotion12[3] /5;
					aEmotion12[4] =  aEmotion12[4] /5;
				
				}
			}
			
			BarChart b = new BarChart(getServletContext().getRealPath("/"));
		    b.createChart(aEmotion12, "Personality Chart for Session " );
		     nextPath = "/ShowChartAdmin.jsp";
		    request.setAttribute("a", "a");
		}
		else if("adminchart".equalsIgnoreCase(action))
		{
			String date = request.getParameter("date");
			DBQuires db = new DBQuires();
			ArrayList<Student> studList = null;
			String type = request.getParameter("type");
			String tablename ="";
			if(type.equals("text"))
				  tablename="result";
			else
				tablename="personality";
			try {
				studList = db.getDetails(date,tablename);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("list", studList);
			request.setAttribute("type", request.getParameter("type"));
			nextPath = "/ShowChartAdmin.jsp";
		}else
		if ("registration".equalsIgnoreCase(action)) {
			System.out.println("A");
			RegService rs = new RegService();
			boolean isSuccess = rs.insertValues(request);

			if (isSuccess == false){
				request.setAttribute(
						"message",
						" This might happen because of the below errors <br>1.Duplicate Email-Id <br>2.Unable to connect Database<br>3.Unable to connect Internet");
			nextPath = "/Registration.jsp";
			}
			else {
				request.setAttribute("message",
						"Account created successfully<br> Please visit your "
								+ request.getParameter("E-mail Id")
								+ " for the credential");
				nextPath = "/Registration.jsp";
			}
			
		} else if ("login".equalsIgnoreCase(action)) {
			String username1 = request.getParameter("EMAILID");
			String password = request.getParameter("PASSWORD");
			
			System.out.println("************************8");
			if("Admin".equals(username1) && "Admin".equals(password))
			{
				
				nextPath = "/ShowChartAdmin.jsp";
			}else{
			
			LoginService ls = new LoginService();
			String username = ls.checkCredintials(request);
			
			System.out.println(username);
			if (username == null)
			{
				nextPath = "/Login.jsp";
				
			}else{
				session.setAttribute("username",username);
				session.setAttribute("emailid",request.getParameter("EMAILID"));
				nextPath = "/Starttest.jsp";
			}
			}
			
		}
	
		else if("forgetpassword".equals(action))
		{
			LoginService ls= new LoginService();
			boolean result=ls.forgetPassword(request);
			request.setAttribute("msg", result);
			nextPath="/ForgetPassword.jsp";	
		}
		else if("changepwd".equals(action))
		{
					System.out.println("In Change Password");
				LoginService ls = new LoginService();
				int noofrowsaffected=ls.changePwd(request,(String)session.getAttribute("emailid"));
				System.out.println(session.getAttribute("emailid"));
				if(noofrowsaffected>0){
					request.setAttribute("message", "Password Change Successfully");
				}
				else{
					request.setAttribute("message", "Current Password does not match");
				}

				nextPath="/Changepassword.jsp";
				
			
		}
		RequestDispatcher rd = request
				.getRequestDispatcher("JSP/"+nextPath);
		rd.forward(request, response);
	}

	private void saveThisFile(String base64Image, String type) throws IOException {
		// TODO Auto-generated method stub
		
		
	      byte[] decoded = Base64.decodeBase64(base64Image);
	       

	        String extension = type;
	        String newFilePath;
	       
	        String newFileName="snap"+"."+extension;
	        newFilePath = "C:\\project\\"+newFileName;
	        InputStream is = new ByteArrayInputStream(decoded);
	        FileOutputStream fos = new FileOutputStream(newFilePath);
	        BufferedOutputStream bos = new BufferedOutputStream(fos);
	        BufferedInputStream bis=new BufferedInputStream(is);
	        
	        int data;
	        int i=0;
	        while ((data = bis.read()) != -1) {
	        bos.write(data);
	        i++;
	        }
	        bis.close();
	        bos.close();
	        fos.close();
	       
		
	}

}

