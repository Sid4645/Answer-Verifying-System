package service;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import util.EMail;
import bean.RegBean;
import converter.RegConverter;
import db.DAOQuires;

public class RegService {

	public boolean insertValues(HttpServletRequest request) {
		
		RegConverter rc=new RegConverter();
		RegBean rb= rc.insertValues(request);
		DAOQuires db= new DAOQuires();
		boolean isSuccess=db.insertReg(rb);
		if(isSuccess==true){
			EMail mail =new EMail();
			isSuccess=mail.sendMail(rb);
			new File("C://"+rb.getEmailid()).mkdirs();
			
		}
		return isSuccess;
		// TODO Auto-generated method stub
		
	}

	

}
