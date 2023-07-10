package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import service.LoginService;
import util.BarChart;
import bean.Emotion;
import bean.FileBean;
import db.DAOQuires;

/**
 * Servlet implementation class in
 */
public class B extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public B() {
		super();
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     String op = "";
		String nextpath="";
		String UPLOAD_DIRECTORY = "C:";
		String action=request.getParameter("action");
		System.out.println("Action="+action);
		
		HttpSession session = request.getSession(true);
		if("changepwd".equals(action)){
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

			nextpath="/Changepassword.jsp";
			
		}
		else
			if("download".equals(action))
			{	ArrayList<FileBean> filelist = null;
				 session = request.getSession(true);
				File folder = new File("C://"+session.getAttribute("emailid"));
				if(folder != null){
				File[] listOfFiles = folder.listFiles();
				 filelist=new ArrayList<FileBean>();
				    for (int i = 0; listOfFiles !=null && i < listOfFiles.length; i++) {
				      if (listOfFiles[i].isFile()) {
				    	  FileBean bean= new FileBean();
				    	  System.out.println(listOfFiles[i].getName());
				    	  bean.setFilename(listOfFiles[i].getName());
				    	  bean.setFilesize(listOfFiles[i].length()/(1024L ));
				    	  filelist.add(bean);
				        
				      } 
				    }
				}
				request.setAttribute("filelist", filelist);				
				nextpath="/Download.jsp";	
			}
		else{
			 double startTime = System.currentTimeMillis();
		String email =(String) session.getAttribute("emailid");
		System.out.println("Path="+session.getAttribute("emailid"));
		File file = new File(UPLOAD_DIRECTORY+"//"+session.getAttribute("emailid"));
		if (!file.exists()) {
			if (file.mkdir()) {
				System.out.println("Directory is created!");
			} else {
				System.out.println("Failed to create directory!");
			}
		}
		 String name=null;
		 UPLOAD_DIRECTORY = UPLOAD_DIRECTORY +"\\"+ session.getAttribute("emailid");
		
		if(ServletFileUpload.isMultipartContent(request)){
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
           
                for(FileItem item : multiparts){
                    if(!item.isFormField()){
                         name = new File(item.getName()).getName();
                        item.write( new File(UPLOAD_DIRECTORY + File.separator + name));
                    }else
                    {
                    	if(!("parallel".equals(op) || "serial".equals(op))){
                    	 op = item.getString();
                    	System.out.println(op+"------");
                    	}
                    }
                }
           
               //File uploaded successfully
                
                // create Encrypt folder
                 file = new File(UPLOAD_DIRECTORY+"//Encrypt");
        		if (!file.exists()) {
        			if (file.mkdir()) {
        				System.out.println("Directory is created!");
        			} else {
        				System.out.println("Failed to create directory!");
        			}
        		}
        		
        		
        	   	
        	  		       
            	}catch(Exception e){
         
            		e.printStackTrace();
         
            	}
                
		}
		if("chart".equals(action))
		{
			System.out.println("--------");
			String lname =  (String)session.getAttribute("emailid");
			String date  = request.getParameter("date");
			String type =  request.getParameter("type");
			double aEmotion12[] = new double[10]; 
			DAOQuires db = new DAOQuires();
			String tablename="";
			
			ArrayList<Emotion> aEmotion =db.getRecords(lname,date,tablename);
			
			for(int i = 0;i<aEmotion.size();i++)
			{
				Emotion e = aEmotion.get(i);
				aEmotion12[0] = Double.parseDouble(e.getext()) +  aEmotion12[0] ;
				aEmotion12[1] = Double.parseDouble(e.getneu()) +  aEmotion12[1] ;
				aEmotion12[2] = Double.parseDouble(e.getagr()) +  aEmotion12[2] ;
				aEmotion12[3] = Double.parseDouble(e.getcon()) +  aEmotion12[3] ;
				aEmotion12[4] = Double.parseDouble(e.getopn()) +  aEmotion12[4] ;
				if (i==aEmotion.size()-1)
				{
					aEmotion12[0] =  aEmotion12[0] /aEmotion.size() ;
					aEmotion12[1] =  aEmotion12[1]/aEmotion.size() ;
					aEmotion12[2] = aEmotion12[2] /aEmotion.size();
					aEmotion12[3] =  aEmotion12[3] /aEmotion.size();
					aEmotion12[4] =  aEmotion12[4] /aEmotion.size();
				}
			}
			System.out.println(aEmotion12[0]+"e");
			BarChart b = new BarChart(getServletContext().getRealPath("/"));
		    b.createChart(aEmotion12, "Personality Chart for Session " );
		     nextpath = "/JSP/ShowChart.jsp";
		    request.setAttribute("a", "a");
			
		}    
                
                
         
              
		
		}
        request.getRequestDispatcher(nextpath).forward(request, response);
     


		    }
}
