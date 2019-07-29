package handler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDBBeanMysql;
import model.BoardDataBean;


public class GameHandler implements CommandHandler{

	private static final String FORM_VIEW = "/A-match/games/list.jsp?boardid=1";

	@Override
	public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {


		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		int pageSize = 6;
		
		HttpSession session = req.getSession();
		String boardid = (String)session.getAttribute("boardid");
		if (boardid == null || boardid == "") {
			boardid = "1";
		}
		
		String pageNum = req.getParameter("pageNum");
		if(pageNum == null || pageNum == ""){
			pageNum = "1";
		}
		int currentPage = Integer.parseInt(pageNum);
		int count = dbPro.getArticleCount(boardid);
		int startRow = (currentPage - 1) * pageSize;
		int endRow = currentPage * pageSize;

		if (count < endRow)
			endRow = count;

		List<BoardDataBean> articleList = dbPro.getArticles(startRow, pageSize, boardid);
		int number = count - ((currentPage - 1) * pageSize);
		int bottomLine = 3;
		int pageCount = count / pageSize + (count % pageSize == 0 ? 0 : 1);
		int startPage = 1 + (currentPage - 1) / bottomLine * bottomLine;
		int endPage = startPage + bottomLine - 1;
		if (endPage > pageCount){
				endPage = pageCount;}
		
		req.setAttribute("count", count);
		req.setAttribute("boardid", boardid);
		req.setAttribute("pageNum", pageNum);
		req.setAttribute("articleList", articleList);
		req.setAttribute("number", number);
		req.setAttribute("startPage", startPage);
		req.setAttribute("bottomLine", bottomLine);
		req.setAttribute("endPage", endPage);
		

		return FORM_VIEW;
	}
}



