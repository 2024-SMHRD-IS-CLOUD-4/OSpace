package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class SearchDAO {
	
	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Products> searchProducts(String text){
		String like_text = "%"+text+"%";
		SqlSession session = factory.openSession(true);
		List<Products> result = session.selectList("Mapper.searchProducts",like_text);
		session.close();
		return result;
	}
	public List<Used_Products> searchUsedProducts(String text){
		String like_text = "%"+text+"%";
		SqlSession session = factory.openSession(true);
		List<Used_Products> result = session.selectList("Mapper.searchUsedProducts",like_text);
		session.close();
		return result;
	}
	public List<Reviews> searchReviews(String text){
		String like_text = "%"+text+"%";
		SqlSession session = factory.openSession(true);
		List<Reviews> result = session.selectList("Mapper.searchReviews",like_text);
		session.close();
		return result;
	}
}
