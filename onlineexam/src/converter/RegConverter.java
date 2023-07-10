package converter;

import javax.servlet.http.HttpServletRequest;

import bean.RegBean;

public class RegConverter {

	public RegBean insertValues(HttpServletRequest request) {
		// TODO Auto-generated method stub
		System.out.println("In");
		RegBean rb=new RegBean();
		rb.setFname(request.getParameter("FirstName"));
		System.out.println("Name is "+rb.getFname());
		rb.setLname(request.getParameter("LastName"));
		System.out.println("Name is "+rb.getLname());
		rb.setAddress(request.getParameter("Address"));
		System.out.println("Address is "+rb.getAddress());
		
		rb.setMobileno(request.getParameter("Mobileno"));
		System.out.println(" MobileNo is "+rb.getMobileno());
		rb.setProf(request.getParameter("prof"));
		
		rb.setEmailid(request.getParameter("E-mail Id"));
		System.out.println(" E-mail Id is "+rb.getEmailid());
		
		return rb;
		
	}

}
