package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.MemberDBBeanMysql;
import model.MemberDataBean;

public class MemberUpdateHandelr implements CommandHandler{
	private static final String FORM_VIEW = "/A-match/login/memberupdateForm.jsp";
	
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
		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDataBean member = manager.getMember(id);
		
		req.setAttribute("member", member);
		req.setAttribute("memId", id);
		
		return FORM_VIEW;
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		
		MemberDataBean member = new MemberDataBean();
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
		
		manager.updateMember(member);
		
		
		return "/A-match/main.do";
	}
	 
}
