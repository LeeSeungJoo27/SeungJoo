package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import model.BoardDataBean;

public class BoardDBBeanMysql {
	private static BoardDBBeanMysql instance = new BoardDBBeanMysql();

	public static BoardDBBeanMysql getInstance() {
		return instance;
	}

	private BoardDBBeanMysql() {

	}

	private Connection getConnection() throws Exception {
		Connection conn = null;
		String jdbcUrl = "jdbc:mysql://localhost:3306/jspdb";
		String dbId = "scott";
		String dbPass = "1111";

		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		return conn;

	}
	
	public List<BoardDataBean> getArticlesByDate(String articleDate, String boardid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<BoardDataBean> articleList = new ArrayList<BoardDataBean>();
		BoardDataBean article = null;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(
					"select * from board_a where boardid = ? and date_format(reg_date, '%y-%M-%d') = ?");
			pstmt.setString(1, boardid);
			pstmt.setString(2, articleDate);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				article = new BoardDataBean();

				article.setNum(rs.getInt("num"));
				article.setBoardid(rs.getString("boardid"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setEmail(rs.getString("email"));
				article.setPassword(rs.getString("password"));
				article.setReg_date(rs.getDate("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_level(rs.getInt("re_level"));
				article.setRe_step(rs.getInt("re_step"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				article.setFilename(rs.getString("filename"));
				article.setFilesize(rs.getInt("filesize"));

				articleList.add(article);
			}

		} catch (Exception e) {

		}

		return articleList;
	}

	public void insertArticle(BoardDataBean article, String boardid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		int number = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select ifnull(max(num),0) from board_a");
			rs = pstmt.executeQuery();

			if (rs.next()) {
				number = rs.getInt(1) + 1;
			} else {
				number = 1;
			}
			if (num != 0) {
				String sql = "update board_a set re_step = re_step + 1 where ref = ? and re_step > ? and boardid = ?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, ref);
				pstmt.setInt(2, re_step);
				pstmt.setString(3, boardid);
				pstmt.executeUpdate();

			} else {
				ref = number;
				re_step = 0;
				re_level = 0;
			}

			pstmt = conn.prepareStatement("insert into board_a values(?,?,?,?,?,?,now(),0,?,?,?,?,?,?,?)");
			pstmt.setInt(1, number);
			pstmt.setString(2, boardid);
			pstmt.setString(3, article.getWriter());
			pstmt.setString(4, article.getSubject());
			pstmt.setString(5, article.getEmail());
			pstmt.setString(6, article.getPassword());
			pstmt.setInt(7, ref);
			pstmt.setInt(8, re_step);
			pstmt.setInt(9, re_level);
			pstmt.setString(10, article.getContent());
			pstmt.setString(11, article.getIp());
			pstmt.setString(12, article.getFilename());
			pstmt.setInt(13, article.getFilesize());

			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace(); // ���� ������ �ߴ°��� printStackTrace()���? ��
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}

public List getArticles(int start, int pagesize, String boardid) {
		
		Connection conn = null;
    	PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	BoardDataBean article = null;
    	List<BoardDataBean> li = null;
    	
    	try {
    		conn = getConnection();
    		if(start != 0 || pagesize != 0) {
	    		pstmt = conn.prepareStatement("select * from board_a where boardid = ? order by num desc limit ? , ?");
	    		pstmt.setString(1, boardid);
	    		pstmt.setInt(2, start);
	    		pstmt.setInt(3, pagesize);
    		} else {
    			pstmt = conn.prepareStatement("select * from board_a where boardid = ? order by num desc");
    			pstmt.setString(1, boardid);
    		}
    		rs = pstmt.executeQuery();
    		if(rs.next()) {
    			li = new ArrayList<BoardDataBean>();
    			do {
    				article = new BoardDataBean();
    			    article.setNum(rs.getInt("num"));
    			    article.setBoardid(rs.getString("boardid"));
    			    article.setWriter(rs.getString("writer"));
    			    article.setSubject(rs.getString("subject"));
    			    article.setEmail(rs.getString("email"));
    			    article.setPassword(rs.getString("password"));
    			    article.setReg_date(rs.getDate("reg_date"));
    			    article.setReadcount(rs.getInt("readcount"));
    			    article.setRef(rs.getInt("ref"));
    			    article.setRe_level(rs.getInt("re_level"));
    			    article.setRe_step(rs.getInt("re_step"));
    			    article.setContent(rs.getString("content"));
    			    article.setIp(rs.getString("ip"));
    			    article.setFilename(rs.getString("filename"));
    			    article.setFilesize(rs.getInt("filesize"));
    				li.add(article);
    			} while(rs.next());
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    	} finally {
    		if(rs != null) {
    			try {
    				rs.close();
    			} catch (SQLException ex) {

    			}
    		}
    		if(pstmt != null) {
    			try {
    				pstmt.close();
    			} catch (SQLException ex) {

    			}
    		}
    		if(conn != null) {
    			try {
    				conn.close();
    			} catch (SQLException ex) {

    			}
    		}

    	}
    	return li;
	}

	public int getArticleCount(String boardid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int x = 0;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select ifnull(count(*),0) from board_a where boardid = ?");
			pstmt.setString(1, boardid);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				x = rs.getInt(1);

			}

		} catch (Exception e) {

			e.printStackTrace();

		} finally {

			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}

		}

		return x;
	}

	public BoardDataBean getArticle(int num, String boardid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDataBean article = null;

		try {
			conn = getConnection();
			pstmt = conn
					.prepareStatement("update board_a set readcount = readcount+1 " + "where boardid = ? and num = ?");
			pstmt.setString(1, boardid);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();

			pstmt = conn.prepareStatement("select * from board_a where boardid = ? and num = ?");
			pstmt.setString(1, boardid);
			pstmt.setInt(2, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				article = new BoardDataBean();
				article.setNum(rs.getInt("num"));
				article.setBoardid(rs.getString("boardid"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setEmail(rs.getString("email"));
				article.setPassword(rs.getString("password"));
				article.setReg_date(rs.getDate("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_level(rs.getInt("re_level"));
				article.setRe_step(rs.getInt("re_step"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				article.setFilename(rs.getString("filename"));
				article.setFilesize(rs.getInt("filesize"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException ex) {

				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException ex) {

				}
			}
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException ex) {

				}
			}

		}
		return article;
	}

	public BoardDataBean getUpdate(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		BoardDataBean article = null;

		try {

			conn = getConnection();
			pstmt = conn.prepareStatement("select * from board_a where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {

				article = new BoardDataBean();
				article.setNum(rs.getInt("num"));
				article.setBoardid(rs.getString("boardid"));
				article.setWriter(rs.getString("writer"));
				article.setSubject(rs.getString("subject"));
				article.setEmail(rs.getString("email"));
				article.setPassword(rs.getString("password"));
				article.setReg_date(rs.getDate("reg_date"));
				article.setReadcount(rs.getInt("readcount"));
				article.setRef(rs.getInt("ref"));
				article.setRe_level(rs.getInt("re_level"));
				article.setRe_step(rs.getInt("re_step"));
				article.setContent(rs.getString("content"));
				article.setIp(rs.getString("ip"));
				article.setFilename(rs.getString("filename"));
				article.setFilesize(rs.getInt("filesize"));
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return article;
	}

	public int updateBoard(BoardDataBean article, String boardid) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		System.out.println(article);
		int x = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select password from board_a where num = ?");
			pstmt.setInt(1, article.getNum());
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String dbpassword = rs.getString("password");
				if (dbpassword.equals(article.getPassword())) {
					pstmt = conn.prepareStatement("update board_a set writer = ?, subject = ?, content = ? where num = ?");
					pstmt.setString(1, article.getWriter());
					pstmt.setString(2, article.getSubject());
					pstmt.setString(3, article.getContent());
					pstmt.setInt(4, article.getNum());
					pstmt.executeUpdate();
					x = 1;
				} else {
					x = 0;
				}
			}
			return x;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return x;
	}

	public int deleteBoard(int num, String password) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
   System.out.println("delete");
		int x = -1;

		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select password from board_a where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				String dbpassword = rs.getString("password");

				if (dbpassword.equals(password)) {
					pstmt = conn.prepareStatement("delete from board_a where num = ?");
					pstmt.setInt(1, num);
					pstmt.executeUpdate();
					x = 1;
				} else {
					x = 0;
				}
			}
			return x;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null)
				try {
					rs.close();
				} catch (SQLException ex) {
				}
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}

		return x;
	}

}
