package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.msk.Action;

import dao.BoardDBBeanMyBatis;
import dao.BoardDBBeanMysql;
import model.BoardDataBean;

public class BoardAction extends Action {
	public String listGET(HttpServletRequest req, HttpServletResponse res) throws Exception {
		
		BoardDBBeanMyBatis dbPro = BoardDBBeanMyBatis.getInstance();
		int pageSize = 6;
		HttpSession session = req.getSession();

		if (req.getParameter("boardid") != null) {
			session.setAttribute("boardid", req.getParameter("boardid"));
		}

		String boardid = (String) session.getAttribute("boardid");
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
		if (endPage > pageCount)
			endPage = pageCount;
		req.setAttribute("count", count);
		req.setAttribute("boardid", boardid);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("articleList", articleList);
		req.setAttribute("number", number);
		req.setAttribute("startPage", startPage);
		req.setAttribute("bottomLine", bottomLine);
		req.setAttribute("endPage", endPage);

		return "/view/board/list.jsp";
	}

	public String writeGET(HttpServletRequest req, HttpServletResponse res) throws Exception {

		int num = 0, ref = 1, re_step = 0, re_level = 0;
		String pageNum = req.getParameter("pageNum");
		if (req.getParameter("num") != null) {
			num = Integer.parseInt(req.getParameter("num"));
			ref = Integer.parseInt(req.getParameter("ref"));
			re_step = Integer.parseInt(req.getParameter("re_step"));
			re_level = Integer.parseInt(req.getParameter("re_level"));
		}

		req.setAttribute("num", num);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("ref", ref);
		req.setAttribute("re_step", re_step);
		req.setAttribute("re_level", re_level);

		return "/view/board/writeForm.jsp";
	}

	public String writePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null)
			boardid = "1";
		String pageNum = req.getParameter("pageNum");
		BoardDBBeanMyBatis dbPro = BoardDBBeanMyBatis.getInstance();
		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(req.getParameter("num")));
		article.setRef(Integer.parseInt(req.getParameter("ref")));
		article.setRe_step(Integer.parseInt(req.getParameter("re_step")));
		article.setRe_level(Integer.parseInt(req.getParameter("re_level")));
		article.setWriter(req.getParameter("writer"));
		article.setEmail(req.getParameter("email"));
		article.setSubject(req.getParameter("subject"));
		article.setPassword(req.getParameter("password"));
		article.setContent(req.getParameter("content"));

		article.setIp(req.getRemoteAddr());
		dbPro.insertArticle(article, boardid);
		try {
			res.sendRedirect(req.getContextPath() + "/board/list.do?pageNum=" + pageNum);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
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
		BoardDataBean article = dbPro.getArticle(num, boardid);
		req.setAttribute("article", article);
		req.setAttribute("pageNum", pageNum);
		return "/view/board/content.jsp";
	}

	public String updateGET(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null)
			boardid = "1";

		int num = Integer.parseInt(req.getParameter("num"));
		String pageNum = req.getParameter("pageNum");

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		BoardDataBean article = dbPro.getUpdate(num, boardid);
		req.setAttribute("article", article);
		req.setAttribute("pageNum", pageNum);
		return "/view/board/updateForm.jsp";
	}

	public String updatePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		HttpSession session = req.getSession();
		String boardid = (String) session.getAttribute("boardid");
		if (boardid == null)
			boardid = "1";
		System.out.println("processSubmit");
		String pageNum = req.getParameter("pageNum");
		BoardDataBean article = new BoardDataBean();
		article.setNum(Integer.parseInt(req.getParameter("num")));
		article.setWriter(req.getParameter("writer"));
		article.setEmail(req.getParameter("email"));
		article.setSubject(req.getParameter("subject"));
		article.setPassword(req.getParameter("password"));
		article.setContent(req.getParameter("content"));
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		int check = dbPro.updateArticle(article, boardid);
		req.setAttribute("check", check);
		req.setAttribute("pageNum", pageNum);
		return "/view/board/updatePro.jsp";
	}

	public String deleteGET(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String pageNum = req.getParameter("pageNum");
		int num = Integer.parseInt(req.getParameter("num"));
		req.setAttribute("num", num);
		req.setAttribute("pageNum", pageNum);
		return "/view/board/deleteForm.jsp";
	}

	public String deletePOST(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String pageNum = req.getParameter("pageNum");
		int num = Integer.parseInt(req.getParameter("num"));
		String password = req.getParameter("password");
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		try {
			int check = dbPro.deleteArticle(num, password);

			req.setAttribute("check", check);
			req.setAttribute("pageNum", pageNum);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/view/board/deletePro.jsp";
	}
}