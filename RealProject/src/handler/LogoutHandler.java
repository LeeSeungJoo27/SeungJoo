package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutHandler implements CommandHandler{
	private static final String FORM_VIEW = "/A-match/main/main.jsp";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		HttpSession session = req.getSession();
		// 기존의 세션 데이터를 모두 삭제
		session.invalidate();
		// 로그인 페이지로 이동
		return FORM_VIEW;
	}

}
