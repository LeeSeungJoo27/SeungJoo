package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AboutHandler implements CommandHandler{
	
private static final String FORM_VIEW = "/A-match/about/about.jsp";
	
	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		return FORM_VIEW;
	}
	

}