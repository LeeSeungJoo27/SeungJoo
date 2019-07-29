package dao;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import model.BoardDataBean;
import myBatis.MyBatisConfig;

public class BoardDBBeanMyBatis {
	
	private static BoardDBBeanMyBatis instance = new  BoardDBBeanMyBatis();
	
	private final String namespace = "myBatis.board";
	
	private BoardDBBeanMyBatis() {
		
	}
	
	public static BoardDBBeanMyBatis getInstance() {
		return instance;
	}
	
	SqlSession sqlSession;
	
	private SqlSession sqlSession() {
		String resource = "myBatis/mybatis-config.xml";
		InputStream inputStream;
		
		try {
			inputStream = Resources.getResourceAsStream(resource);
		} catch (IOException e) {
			e.printStackTrace();
			throw new IllegalArgumentException(e);
		}
		
		return new SqlSessionFactoryBuilder().build(inputStream).openSession();
	}
	
	public SqlSession getSession() {
		SqlSession sqlSession = null;
		
		try {
			sqlSession = sqlSession();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return sqlSession;
	}
	
	
	public int getArticleCount(String boardid) throws Exception {
		
		SqlSession sqlSession = getSession();
		System.out.println("=====getArticleCount=====old");
		
		try {
			return sqlSession.selectOne(namespace + ".getArticleCount", boardid);
		} finally {
			sqlSession.close();
		}
	}
	
	public List getArticles(int start, int end, String boardid) throws Exception {
		
		SqlSession sqlSession = getSession();
		System.out.println("=====getArticles=====old");
		
		HashMap map = new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("boardid", boardid);
		
		try {
			return sqlSession.selectList(namespace + ".getArticles", map);
		} finally {
			sqlSession.close();
		}
	}

	public void insertArticle(BoardDataBean article, String boardid) throws Exception{
		SqlSession sqlSession = getSession();
		int num = article.getNum();
		int ref = article.getRef();
		int re_step = article.getRe_step();
		int re_level = article.getRe_level();
		
		try {
			HashMap map = new HashMap();
			int number = sqlSession.selectOne(namespace + ".insertArticle_new");
			if (number != 0) {
				number = number + 1;
			} else {
				number = 1;
			}
			if ( num != 0) {
				map.put("ref", ref);
				map.put("re_step", re_step);
				sqlSession.update(namespace + ".insertArticle_update", map);
				re_step = re_step + 1;
				re_level = re_level + 1;
			} else {
				ref = number;
				re_step = 0;
				re_level = 0;
			}
			article.setNum(number);
			article.setRef(ref);
			article.setRe_step(re_step);
			article.setRe_level(re_level);
			article.setBoardid(boardid);
			System.out.println("insert:"+ article);
			int result = sqlSession.insert(namespace + ".insertArticle_insert", article);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	}
	
	
	

}
