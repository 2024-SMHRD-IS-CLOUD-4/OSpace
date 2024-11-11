package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ReservedDAO {

    SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Reserved> getAllReserveds() {
		SqlSession sqlSession = factory.openSession(true);
        List<Reserved> result = sqlSession.selectList("ReservedMapper.getAllReserveds");
        sqlSession.close();
        return result;
	}
	
	public List<Reserved> getMyReserved(String id) {
		SqlSession sqlSession = factory.openSession(true);
        List<Reserved> result = sqlSession.selectList("ReservedMapper.getMyReserved",id);
        sqlSession.close();
        return result;
	}
	
	public int insertReserved(Reserved rs) {
		SqlSession sqlSession = factory.openSession(true);
        int result = sqlSession.insert("ReservedMapper.insertReserved",rs);
        sqlSession.close();
        return result;
	}
	
	public int deleteReserved(int reserved_id) {
		SqlSession sqlSession = factory.openSession(true);
        int result = sqlSession.delete("ReservedMapper.deleteReserved",reserved_id);
        sqlSession.close();
        return result;
	}
	
}