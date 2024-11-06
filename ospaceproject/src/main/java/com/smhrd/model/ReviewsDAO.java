package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ReviewsDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int insert(Reviews review) {
		
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("ReviewMapper.review_insert", review);
		sqlSession.close();
		return result;
	}
	public List<Reviews> getreview(){
		SqlSession session = factory.openSession(true);
		List<Reviews> result = session.selectList("ReviewMapper.get_reviews");
		session.close();
	    return result;
	}
}
