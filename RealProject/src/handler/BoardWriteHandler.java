package handler;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDBBeanMysql;
import model.BoardDataBean;

public class BoardWriteHandler implements CommandHandler {
	private static final String FORM_VIEW = "/A-match/games/list.jsp?boardid=1";

	   @Override
	   public String process(HttpServletRequest req, HttpServletResponse res) throws IOException {
	      if(req.getMethod().equalsIgnoreCase("GET")) {
	         return processForm(req, res);
	      } else if (req.getMethod().equalsIgnoreCase("POST")) {
	         return processSubmit(req, res);
	      } else {
	         res.setStatus(HttpServletResponse.SC_METHOD_NOT_ALLOWED);
	         return null;
	      }
	   }

	   private String processForm(HttpServletRequest req, HttpServletResponse res) {
		      int num = 0;
		      int ref = 1;
		      int re_step = 0;
		      int re_level = 0;
		      String pageNum = req.getParameter("pageNum");
		      if(pageNum == null || pageNum == ""){
		         pageNum = "1";
		      }
		      
		      if(req.getParameter("num") != null){
		         num = Integer.parseInt(req.getParameter("num"));
		         ref = Integer.parseInt(req.getParameter("ref"));
		         re_step = Integer.parseInt(req.getParameter("re_step"));
		         re_level = Integer.parseInt(req.getParameter("re_level"));
		      }
		      req.setAttribute("num", num);
		      req.setAttribute("ref", ref);
		      req.setAttribute("re_step", re_step);
		      req.setAttribute("re_level", re_level);
		      req.setAttribute("pageNum", pageNum);
		      
		      return FORM_VIEW;
		   }

	private String processSubmit(HttpServletRequest req, HttpServletResponse res) throws IOException {
		try {
	         req.setCharacterEncoding("EUC-KR");
	      } catch (UnsupportedEncodingException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }
	      res.setContentType("text/html;charset=EUC-KR");
	      
	   HttpSession session = req.getSession();
	   String boardid = (String)session.getAttribute("boardid");
		if (boardid == null || boardid == "") {
			boardid = "1";
		}
		int pageSize = 10; // 한 페이지에 들어갈 게시물의 갯수 

	   String pageNum = req.getParameter("pageNum");
	   BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
	   BoardDataBean article = new BoardDataBean();
	   //writeForm에서 보낸 것을 받는 것! req.getParameter로 받고 그걸 다시 set으로 설정한다
	   article.setNum(Integer.parseInt(req.getParameter("num")));
	   article.setRef(Integer.parseInt(req.getParameter("ref")));
	   article.setRe_step(Integer.parseInt(req.getParameter("re_step")));
	   article.setRe_level(Integer.parseInt(req.getParameter("re_level")));
	   article.setWriter(req.getParameter("writer"));
	   article.setEmail(req.getParameter("email"));
	   article.setSubject(req.getParameter("subject"));
	   article.setPassword(req.getParameter("password"));
	   article.setContent(req.getParameter("content"));
	   article.setWriter(req.getParameter("writer"));
	   article.setIp(req.getRemoteAddr());
	   
	   dbPro.insertArticle(article, boardid);
	   try {
		   res.sendRedirect(req.getContextPath()+"/games/list.do?pageNum="+pageNum);
	   } catch (IOException e) {
		   e.printStackTrace();
	   }
	   return null;
	}
}
