package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class CategoryDAO {

    SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Category> getAllCategory(){
		SqlSession sqlSession = factory.openSession(true);
		List<Category> result = sqlSession.selectList("CategoryMapper.getAllCategory");
        sqlSession.close();
        return result;
	}
	public int categoryCount(int category_id) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.selectOne("CategoryMapper.categoryCount",category_id);
        sqlSession.close();
		return result;
	}
}
