package handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDBBeanMysql;

public class MemberDeleteHandler implements CommandHandler{

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
		// TODO Auto-generated method stub
		return null;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		   req.setCharacterEncoding("euc-kr"); 
		   
		   HttpSession session = req.getSession();
		   String id = (String)session.getAttribute("memId");
		   String password = req.getParameter("password");   
		   
		   MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		   int x = manager.deleteMember(id,password);
		   
		   req.setAttribute("x", x);
		   
		return "/A-match/login/deletePro.jsp";
	}

}
