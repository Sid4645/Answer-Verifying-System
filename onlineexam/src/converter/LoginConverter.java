package converter;

import javax.servlet.http.HttpServletRequest;

import bean.RegBean;

public class LoginConverter {

	public RegBean getLoginData(HttpServletRequest request) {
		// TODO Auto-generated method stub
		RegBean rb=new RegBean();
		rb.setEmailid(request.getParameter("EMAILID"));
		rb.setPassword(request.getParameter("PASSWORD"));
		return rb;
	}

	public RegBean getForgetPassword(HttpServletRequest request) {
		// TODO Auto-generated method stub
		RegBean rb=new RegBean();
		rb.setEmailid(request.getParameter("EMAILID"));
		return rb;
	}

	public RegBean getChangepwd(HttpServletRequest request) {
		// TODO Auto-generated method stub
		RegBean rb=new RegBean();
		rb.setPassword(request.getParameter("CPWD"));
		rb.setChangepwd(request.getParameter("NPWD"));
		return rb;
	}

	
}
