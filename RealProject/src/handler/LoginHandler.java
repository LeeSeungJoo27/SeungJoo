package handler;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDBBeanMysql;
import dao.MemberDBBeanMysql;
import model.BoardDataBean;
import model.MemberDataBean;

public class LoginHandler implements CommandHandler{
	
	private static final String FORM_VIEW = "/A-match/main/main.jsp";


	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		if (req.getMethod().equalsIgnoreCase("GET")) {
			return processForm(req, res);
		} else if (req.getMethod().equalsIgnoreCase("POST")) {
			return processSubmit(req, res);
		} else {
			res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
			return null;
		}
	}
	private String processForm(HttpServletRequest req, HttpServletResponse res) {
		
	
		return FORM_VIEW;
		
	}
	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException {
		 
		req.setCharacterEncoding("euc-kr"); 
		
		MemberDataBean member = new MemberDataBean();
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		int check = manager.userCheck(id,password);
		req.setAttribute("check", check);
		req.setAttribute("id", id);
		
		return "/A-match/login/loginPro.jsp";
	}
}
