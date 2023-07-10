package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Questionbean;
import bean.Student;
import db.DBQuires;

/**
 * Servlet implementation class Test
 */
public class Test extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Test() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");

		String action1 = request.getParameter("action1");
		HttpSession session = request.getSession(true);
	      
		System.out.println(action);
		System.out.println(action1);
		 if("test".equals(action) && action1==null)
		{
			 if(session.getAttribute("list")== null){
			 DBQuires db = new DBQuires();
			session.setAttribute("action1", "Student");	
			String testname=db.getProfession((String)session.getAttribute("emailid"));
			/*session.setAttribute("name",request.getParameter("name"));
			session.setAttribute("mno",request.getParameter("mno"));
			*///DBQuires db = new DBQuires();
		/*	System.out.println(testname);*/
			session.setAttribute("exam", null);
			ArrayList<Questionbean> qlist=db.getQuestions(testname);
			 
			session.setAttribute("list", qlist);
			 }
			 else
			 {
				 ArrayList<Questionbean> list=( ArrayList<Questionbean>) session.getAttribute("list");
				 for(Questionbean bean:list){
					 String id =bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "");
					 String a = request.getParameter(id);
					 
					/* System.out.println("id:"+id);

					 System.out.println("a:"+a);*/
					 request.setAttribute(id, a);
				 }
			 }
			RequestDispatcher rd = request.getRequestDispatcher("JSP/onlinetest.jsp");
			rd.forward(request,response);		
			
					
		}
		else if("Submit Test".equals(action1))
		{
			String user = (String) session.getAttribute("emailid");
			Date date1 = new Date();
			DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String date = dateFormat.format(date1);
			for(int i=1;;i++)
			{
			String question = request.getParameter("question"+i);
			System.out.println("action"+question);
			String ans = request.getParameter(question);
			System.out.println("action"+ans);
			String test ="Subjective";
			session.setAttribute("test", test);
			System.out.println("action"+test);
			if(question==null)
				break;
			Runtime.getRuntime().exec("  cmd /c start C:\\project\\subjective.bat "+"\""+question+"\" "+"\""+ans+"\" \""+user+"\"  "+date);  
			}
try{
			Thread.sleep(20000);
}catch (Exception e) {
	// TODO: handle exception
}		
			/*
			ArrayList<String> correctansqid = new ArrayList<String>();
			String status= (String)session.getAttribute("exam");
			String action1= (String)session.getAttribute("action1");
			System.out.println(action1+"^^^^^^^^^^^^^^^^^^^^^^");
			if(status==null || "null".equals(status)){
			
			int correctans=0;
			int unanswerdans=0;
			ArrayList<Questionbean> qlist= (ArrayList<Questionbean>) session.getAttribute("list");
			int i=0;
			for(Questionbean bean:qlist)
			{
				String userans=request.getParameter(bean.getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") );
				if(userans!=null)
				userans=userans.trim();	
				Runtime.getRuntime().exec("  cmd /c start C:\\project\\personality.bat \""+userans+"\" C:\\project\\f"+(++i));

			}
			try {
				Thread.sleep(120000);
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
		    Date date = new Date();  
		    String date1 = formatter.format(date);  
			session.setAttribute("correctansqid", correctansqid);
			session.setAttribute("exam", "done");
			request.setAttribute("marks", correctans);
			request.setAttribute("unanswerdans", unanswerdans);
			String mobile = (String) session.getAttribute("emailid");
			String name = ""+session.getAttribute("name");
			DBQuires db = new DBQuires();
			int ij=0;
			try {
				for(Questionbean bean:qlist)
				{
					db.insertValues(mobile,bean.getQid(),"C:\\project\\f"+(++ij),date1);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		//	CallSMScAPI.SMSSender("adugar", "sms@123", mobile,"Correct ans"+correctans+"/"+qlist.size()+" Thank you for exam", "WebSMS", "0");
			}*/
			RequestDispatcher rd = request.getRequestDispatcher("JSP/pic.jsp");
			rd.forward(request,response);
			
				
			
		}
				
		
		
	}

}
