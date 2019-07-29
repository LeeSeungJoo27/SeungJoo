package handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDBBeanMysql;
import model.BoardDataBean;

public class ContentHandler implements CommandHandler{

		@Override
		public String process(HttpServletRequest req, HttpServletResponse res) throws Exception {
			
		HttpSession session = req.getSession();
		String boardid = (String)session.getAttribute("boardid");
		if (boardid == null) boardid = "1";


		int num = Integer.parseInt(req.getParameter("num"));
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		String pageNum = req.getParameter("pageNum");
		if(pageNum == null || pageNum==""){
			pageNum="1";
		}

		//db���� �޾� �°Ű� �̰� ������� �ϴϱ� setAttribute�� ����ؾ��Ѵ�. 
		BoardDataBean article = dbPro.getArticle(num, boardid);
		req.setAttribute("article", article);
		req.setAttribute("pageNum",pageNum);

		return "/A-match/games/content.jsp";
	}



}
