package myBatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//모든 영역에서 사용할 수 있도록 상속을 위해 만드는 것.
public class MyBatisConfig {

	// static은 메모리 영역 1개 -> 부를 때 같은거 가져다 씀
	private static SqlSessionFactory sqlSessionFactory;
	protected static SqlSession sqlSession;

	static {
		try {
			setSqlSessionFactory();
			sqlSession = sqlSessionFactory.openSession();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private static void setSqlSessionFactory() {
		String resource = "myBatis/mybatis-config.xml";
		InputStream inputStream;

		try {
			inputStream = Resources.getResourceAsStream(resource);
			
		} catch (IOException e) {
			e.printStackTrace();
			throw new IllegalArgumentException(e);
		}

		sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
	}

}
