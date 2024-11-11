package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class ProductColorDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<ProductColors> getProdColor(int prod_id){
		SqlSession session = factory.openSession(true);
		List<ProductColors> result = session.selectList("ProductMapper.getProdColor",prod_id);
		session.close();
	    return result;
	}
}