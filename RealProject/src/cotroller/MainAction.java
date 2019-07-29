package cotroller;

import java.text.SimpleDateFormat;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.msk.Action;

import dao.BoardDBBeanMysql;
import dao.MemberDBBeanMysql;
import model.BoardDataBean;
import model.MemberDataBean;

public class MainAction extends Action{

	public String mainGET(HttpServletRequest req,
			HttpServletResponse res)  throws Exception { 
		return  "/A-match/main/main.jsp"; 

	}
	public String aboutGET(HttpServletRequest req,  HttpServletResponse res)  throws Exception { 
		return  "/A-match/about/about.jsp"; 
	}

	public String registerPOST(HttpServletRequest req, HttpServletResponse res)  throws Exception {
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
		return  "/A-match/main/main.jsp";
	} 

	public String loginPOST(HttpServletRequest req, HttpServletResponse res)  throws Exception { 
		req.setCharacterEncoding("euc-kr"); 

		MemberDataBean member = new MemberDataBean();
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		int check = manager.userCheck(id,password);
		req.setAttribute("check", check);
		req.setAttribute("id", id);

		return "/A-match/login/loginPro.jsp";
	} 

	public String loginGET(HttpServletRequest req, HttpServletResponse res)  throws Exception { 
		return  "/A-match/main/main.jsp";
	} 

	public String logoutGET(HttpServletRequest req,  HttpServletResponse res)  throws Exception { 
		HttpSession session = req.getSession();
		// 기존의 세션 데이터를 모두 삭제
		session.invalidate();
		// 로그인 페이지로 이동
		return  "/A-match/main/main.jsp";
	}

	public String memberupdateGET(HttpServletRequest req, HttpServletResponse res)  throws Exception { 
		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();

		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memId");
		MemberDataBean member = manager.getMember(id);

		req.setAttribute("member", member);
		req.setAttribute("memId", id);

		return "/A-match/login/memberupdateForm.jsp";
	}
	public String memberupdatePOST(HttpServletRequest req, HttpServletResponse res)  throws Exception { 
		req.setCharacterEncoding("euc-kr"); 

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


		return "/A-match/main/main.jsp";
	}
	public String memberdeletePOST(HttpServletRequest req, HttpServletResponse res)  throws Exception { 

		req.setCharacterEncoding("euc-kr"); 

		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("memId");
		String password = req.getParameter("password");   

		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		int x = manager.deleteMember(id,password);

		req.setAttribute("x", x);

		return "/A-match/login/deletePro.jsp";
	}

	public String memberListGET(HttpServletRequest req, HttpServletResponse res)  throws Exception { 

		MemberDBBeanMysql manager = MemberDBBeanMysql.getInstance();
		List<MemberDataBean> li = manager.getMemberList();

		req.setAttribute("li", li);

		return  "/A-match/member/memberList.jsp"; 
	}


	public String futsalGET(HttpServletRequest req, HttpServletResponse res)  throws Exception {

		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		List<BoardDataBean> articleList = dbPro.getArticles(0,0,"2");

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd"); 
		BoardDataBean bean = null;
		System.out.println(articleList);
		req.setAttribute("articleList", articleList);

		return  "/A-match/futsal/futsal3.jsp"; 
	} 
	public String futsalListGET(HttpServletRequest req, HttpServletResponse res)  throws Exception { 
		String date = req.getParameter("date");
            System.out.println("=============================");
		BoardDBBeanMysql dbPro = BoardDBBeanMysql.getInstance();
		List<BoardDataBean> articleList = dbPro.getArticlesByDate(date, "2");
		System.out.println(articleList);

		req.setAttribute("date", date);
		req.setAttribute("articleList", articleList);
     

		return  "/A-match/futsal/futsalgame.jsp"; 
	} 
	public String contactGET(HttpServletRequest req, HttpServletResponse res)  throws Exception {
		
		return  "/A-match/contact/websocket01.jsp"; 
	} 

}
// GET은  받는 데이터들을 말하는 거고 POST는 입력한 데이터를 뿌려주는 방식 