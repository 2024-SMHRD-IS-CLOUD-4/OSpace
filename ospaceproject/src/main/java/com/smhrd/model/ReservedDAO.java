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
	
}
