package cotroller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.msk.Action;

import dao.BoardDBBeanMysql;
import model.BoardDataBean;
import model.MemberDataBean;

public class BoardAction extends Action {

	public String gameGET(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// Gaems 메뉴에서 List들을 받는 방식

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		int pageSize = 10;
		HttpSession session = req.getSession();

		if (req.getParameter("boardid") != null) {
			session.setAttribute("boardid", req.getParameter("boardid"));
		}

		String boardid = req.getParameter("boardid");
		if (boardid == null)
			boardid = "1";

		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int count = dbPro.getArticleCount(boardid);
		int startRow = (currentPage - 1) * pageSize;
		int endRow = currentPage * pageSize;
		if (count < endRow)
			endRow = count;
		List articleList = dbPro.getArticles(startRow, pageSize, boardid);
		int number = count - ((currentPage - 1) * pageSize);

		int bottomLine = 3;
		// 5 page
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount) {
			endPage = pageCount;
		}

		req.setAttribute("pageCount", pageCount);
		req.setAttribute("count", count);
		req.setAttribute("boardid", boardid);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("articleList", articleList);
		req.setAttribute("number", number);
		req.setAttribute("startPage", startPage);
		req.setAttribute("bottomLine", bottomLine);
		req.setAttribute("endPage", endPage);

		return "/A-match/games/list.jsp";
	}

	public String boardwritePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("euc-kr");

		int num = 0;
		int ref = 1;
		int re_step = 0;
		int re_level = 0;

		if (req.getParameter("num") != null && !req.getParameter("num").equals("")) {
			num = Integer.parseInt(req.getParameter("num"));
			ref = Integer.parseInt(req.getParameter("ref"));
			re_step = Integer.parseInt(req.getParameter("re_step"));
			re_level = Integer.parseInt(req.getParameter("re_level"));
		}

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		BoardDataBean article = new BoardDataBean();

		try {
			article.setNum(num);
			article.setWriter(req.getParameter("writer"));
			article.setSubject(req.getParameter("subject"));
			article.setEmail(req.getParameter("email"));
			article.setPassword(req.getParameter("password"));
			article.setReg_date(new Date());
			article.setRef(ref);
			article.setRe_level(re_level);
			article.setRe_step(re_step);
			article.setContent(req.getParameter("content"));
			article.setIp(req.getRemoteAddr());
		} catch (Exception e) {
			e.printStackTrace();
		}

		String boardid = req.getParameter("boardid");
		System.out.println(boardid);
		if (boardid == null || boardid == " ") {
			boardid = "1";
		}

		String pageNum = req.getParameter("pageNum");

		dbPro.insertArticle(article, boardid);

		MemberDataBean member = new MemberDataBean();
		String id = member.getId();

		/*
		 * if (id.equals("admin")) { res.sendRedirect("board.jsp?pageNum=" + pageNum); }
		 * else { res.sendRedirect("/RealProject/board/game.do?pageNum=" + pageNum +
		 * "&boardId=" + boardid); }
		 */
		req.setAttribute("id", id);
		req.setAttribute("boardid", boardid);
		req.setAttribute("pageNum", pageNum);

		return "/A-match/games/writeSuccess.jsp";
	}

	public String contentGET(HttpServletRequest req, HttpServletResponse res) throws Exception {

		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null)
			boardid = "1";

		int num = Integer.parseInt(req.getParameter("num"));
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}

		// db에서 받아 온거고 이걸 보내줘야 하니깐 setAttribute를 사용해야한다.
		BoardDataBean article = dbPro.getArticle(num, boardid);
		req.setAttribute("article", article);
		req.setAttribute("pageNum", pageNum);

		return "/A-match/games/content.jsp";
	}

	public String boardupdateGET(HttpServletRequest req, HttpServletResponse res) throws Exception {

		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null || boardid == "") {
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

	public String boardupdatePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("euc-kr");

		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null || boardid == "") {
			boardid = "1";
		}
		String pageNum = req.getParameter("pageNum");
		if (pageNum == null || pageNum == "") {
			pageNum = "1";
		}

		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(req.getParameter("num")));
		article.setBoardid(boardid);
		article.setWriter(req.getParameter("writer"));
		article.setSubject(req.getParameter("subject"));
		article.setContent(req.getParameter("content"));
		article.setPassword(req.getParameter("password"));
		article.setIp(req.getRemoteAddr());

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();

		int check = dbPro.updateBoard(article, boardid);
		System.out.println("check: " + check);

		req.setAttribute("article", article);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("check", check);

		return "/A-match/games/boardupdatePro.jsp";
	}

	public String boarddeleteGET(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int num = Integer.parseInt(req.getParameter("num"));
		String pageNum = req.getParameter("pageNum");

		req.setAttribute("num", num);
		req.setAttribute("pageNum", pageNum);

		return "/A-match/games/boarddeleteForm.jsp";
	}

	public String boarddeletePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(req.getParameter("num")));
		article.setWriter(req.getParameter("writer"));
		article.setEmail(req.getParameter("email"));
		article.setSubject(req.getParameter("subject"));
		article.setContent(req.getParameter("content"));
		article.setPassword(req.getParameter("password"));
		article.setIp(req.getRemoteAddr());

		String pageNum = req.getParameter("pageNum");
		int num = Integer.parseInt(req.getParameter("num"));
		String password = req.getParameter("password");

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		int check = dbPro.deleteBoard(num, password);

		req.setAttribute("check", check);
		req.setAttribute("pageNum", pageNum);

		return "/A-match/games/boarddeletePro.jsp";
	}


}
