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
	public int deleteReview(int review_id) {
		SqlSession session = factory.openSession(true);
		int result = session.delete("ReviewMapper.deleteReview",review_id);
		session.close();
		return result;
	}
	public List<Reviews> getreview(){
		SqlSession session = factory.openSession(true);
		List<Reviews> result = session.selectList("ReviewMapper.get_reviews");
		session.close();
	    return result;
	}
	public List<Reviews> getMyReview(String id){
		SqlSession session = factory.openSession(true);
		List<Reviews> result = session.selectList("ReviewMapper.getMyReview",id);
		session.close();
	    return result;
	}
	public List<Reviews> getProductReviews(int prod_id){
		SqlSession session = factory.openSession(true);
		List<Reviews> result = session.selectList("ReviewMapper.getProductReviews",prod_id);
		session.close();
	    return result;
	}
	
	public Reviews getProductReview(int prod_id){
		SqlSession session = factory.openSession(true);
		Reviews result = session.selectOne("ReviewMapper.getProductReviews",prod_id);
		session.close();
	    return result;
	}
	
	public Reviews getMyProductReview(int review_id){
		SqlSession session = factory.openSession(true);
		Reviews result = session.selectOne("ReviewMapper.getMyProductReview",review_id);
		session.close();
	    return result;
	}
	
	public int updateReview(Reviews r) {
		SqlSession session = factory.openSession(true);
		int result = session.update("ReviewMapper.updateReview",r);
		session.close();
		return result;
	}
}