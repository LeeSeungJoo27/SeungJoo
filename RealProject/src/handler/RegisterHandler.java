package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDBBeanMysql;
import model.MemberDataBean;


public class RegisterHandler implements CommandHandler{
	private static final String FORM_VIEW = "/A-match/main/main.jsp";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		 
		 req.setCharacterEncoding("euc-kr");
		 MemberDataBean member =  new MemberDataBean();
		 member.setId(req.getParameter("id"));
		 member.setPassword(req.getParameter("password"));
		 member.setName(req.getParameter("name"));
		 member.setYear(Integer.parseInt(req.getParameter("year")));
		 member.setGender(req.getParameter("gender"));
		 member.setAddr1(req.getParameter("addr1"));
		 member.setAddr3(req.getParameter("addr3"));
		 member.setTel(req.getParameter("tel"));
		 member.setMailcode(req.getParameter("mailcode"));
		 
		 MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		 manager.insertMember(member);
		 //member.getid == req.getParameter 
		return FORM_VIEW;
	}

}
