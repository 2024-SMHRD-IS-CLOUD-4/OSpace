package com.smhrd.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;
import java.util.List;

public class ProductsDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int insert(Products m) {
		SqlSession sqlSession = factory.openSession(true); // auto commit true
		int result = sqlSession.insert("ProductMapper.prodInsert", m);
		sqlSession.close();
		return result;
	}
	public List<Products> getAllProducts() {
		SqlSession session = factory.openSession(true);
		List<Products> result = session.selectList("ProductMapper.getAllProducts");
		session.close();
		return result;
	}
	public Products getSingleProduct(int prod_id) {
		SqlSession session = factory.openSession(true);
		Products result = session.selectOne("ProductMapper.getSingleProduct",prod_id);
		session.close();
		return result;
	}
	public int update(Products p) {
		SqlSession session = factory.openSession(true);
		int result = session.update("ProductMapper.updateProduct",p);
		session.close();
		return result;
	}
	public int deleteProduct(int id) {
		SqlSession session = factory.openSession(true);
		int result = session.delete("ProductMapper.deleteProduct",id);
		session.close();
		return result;
	}
	public int insertBasket(Products p) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("ProductMapper.insertBasket", p);
		sqlSession.close();
		return result;
	}
	public List<Basket> getBasket(){
		SqlSession session = factory.openSession(true);
		List<Basket> result = session.selectList("ProductMapper.getBasket");
		session.close();
		return result;
	}
	public List<Reserved> getReserved(){
		SqlSession session = factory.openSession(true);
		List<Reserved> result = session.selectList("ProductMapper.getReserved");
		session.close();
		return result;
	}
	public int insertReserved(Products p) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("ProductMapper.insertReserved", p);
		sqlSession.close();
		return result;
	}
	public List<Products> orderByViews(){
		SqlSession session = factory.openSession(true);
		List<Products> result = session.selectList("ProductMapper.orderByViews");
		session.close();
		return result;
	}
}