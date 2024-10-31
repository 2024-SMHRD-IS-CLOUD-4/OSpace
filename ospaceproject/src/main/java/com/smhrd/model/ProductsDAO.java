package com.smhrd.model;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import com.smhrd.database.SqlSessionManager;

import java.io.IOException;
import java.io.Reader;
import java.util.List;

public class ProductsDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int insert(Products m) {
		// 1. session 꺼내오기
		SqlSession sqlSession = factory.openSession(true); // auto commit true
		int result = sqlSession.insert("ProductsMapper.prod_insert", m);

		// 세션 반납
		sqlSession.close();
		return result;
	}



//상품 목록 가져오기 메서드
	public List<Products> getAllProducts() {
		try (SqlSession sqlSession = factory.openSession()) {
			return sqlSession.selectList("ProductsMapper.getAllProducts");
		}
	}
}

