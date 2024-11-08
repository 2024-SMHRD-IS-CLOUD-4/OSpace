package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UsedCommentDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<UsedComment> getAllComments(int used_id){
		SqlSession sqlSession = factory.openSession(true);
		List<UsedComment> result= sqlSession.selectList("UsedProductMapper.getAllComments", used_id);
		sqlSession.close();
		return result;
	}
	
	public List<UsedComment> getAllRecomments(int usedCommentId){
		SqlSession sqlSession = factory.openSession(true);
		List<UsedComment> result = sqlSession.selectList("UsedProductMapper.getAllRecomments", usedCommentId);
		sqlSession.close();
		return result;
	}
	
}