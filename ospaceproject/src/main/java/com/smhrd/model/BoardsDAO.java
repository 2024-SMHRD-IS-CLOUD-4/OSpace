package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BoardsDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	public int insert(Boards board) {
		
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("BoardMapper.board_insert", board);
		
		sqlSession.close();
		return result;
	}
	
	public List<Boards> getboard(){
		SqlSession session = factory.openSession(true);
		List<Boards> result = session.selectList("BoardMapper.get_boards");
		session.close();
		return result;
	}
	
}
