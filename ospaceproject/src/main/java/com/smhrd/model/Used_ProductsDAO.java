package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class Used_ProductsDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int insert(Used_Products usedproduct) {

		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("Mapper.write", usedproduct);

		sqlSession.close();
		return result;
	}

	public List<Used_Products> getu_prod() {
	    SqlSession session = factory.openSession(true);
	    List<Used_Products> result = session.selectList("Mapper.getu_prod");
	    session.close();
	    return result;
	}

	public Used_Products getu_prod(int used_id) {
	    SqlSession session = factory.openSession(true);
	    Used_Products result = session.selectOne("Mapper.get_single_prod", used_id);
	    session.close();
	    return result;
	}
}
