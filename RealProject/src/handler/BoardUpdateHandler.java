package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDBBeanMysql;
import model.BoardDataBean;

public class BoardUpdateHandler implements CommandHandler{
	private static final String FORM_VIEW = "/A-match/games/boardupdateForm.jsp";

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
		
		HttpSession session = req.getSession();
		String boardid = (String)session.getAttribute("boardid");
		if ( boardid == null || boardid == "") {
			boardid = "1";
		}
		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}
		int num = Integer.parseInt(req.getParameter("num"));
		
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		BoardDataBean article = dbPro.getUpdate(num);
		
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("article", article);
		
		return "/A-match/games/boardupdateForm.jsp";
	}

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) {
		HttpSession session = req.getSession();
		String boardid = (String)session.getAttribute("boardid");
		if ( boardid == null || boardid == "") {
			boardid = "1";
		}
		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}
		
		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(req.getParameter("num")));
		article.setBoardid(req.getParameter("boardid"));
		article.setWriter(req.getParameter("writer"));
		article.setSubject(req.getParameter("subject"));
		article.setContent(req.getParameter("content"));
		article.setPassword(req.getParameter("password"));
		article.setIp(req.getRemoteAddr());
		
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		int check = dbPro.updateBoard(article, boardid);
		System.out.println(check);
		req.setAttribute("article", article);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("check", check);
		
		return "/A-match/games/boardupdatePro.jsp";
	}

}
