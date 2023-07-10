package service;

import javax.servlet.http.HttpServletRequest;

import util.EMail;

import bean.RegBean;
import converter.LoginConverter;
import db.DAOQuires;

public class LoginService {

	public String checkCredintials(HttpServletRequest request) {
		// TODO Auto-generated method stub
		LoginConverter lc=new LoginConverter();
		RegBean bean=lc.getLoginData(request);
		DAOQuires db=new DAOQuires();
		String userName=db.checkLogin(bean);
		return userName;
		
	}

	public boolean forgetPassword(HttpServletRequest request) {
		// TODO Auto-generated method stub
		LoginConverter lc=new LoginConverter();
		RegBean bean=lc.getForgetPassword(request);
		DAOQuires db=new DAOQuires();
		bean=db.getForgetPassword(bean);
		if(bean==null)
			return false;
		else{
			EMail mail= new EMail();
		mail.sendMail(bean);
		}
		return true;
	}

	public int changePwd(HttpServletRequest request,String emailid) {
		// TODO Auto-generated method stub
		LoginConverter lc=new LoginConverter();
		RegBean rb=lc.getChangepwd(request);
		DAOQuires db=new DAOQuires();
		return db.Changepwd(rb,emailid);
		
	}



}
