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
	public List<Products> orderByDate(){
		SqlSession session = factory.openSession(true);
		List<Products> result = session.selectList("ProductMapper.orderByDate");
		session.close();
		return result;
	}
	public int incrementViews(int prod_id) {
	    SqlSession session = factory.openSession(true);
	    int result = session.update("ProductMapper.incrementViews", prod_id);
	    session.close();
	    return result;
	}
	public List<Products> getMyProducts(String id){
		SqlSession session = factory.openSession(true);
		List<Products> result = session.selectList("ProductMapper.getMyProducts");
		session.close();
		return result;
	}
	public List<Products> getCategoryProducts(String category_name){
		SqlSession session = factory.openSession(true);
		int category_id = 0;
		switch(category_name) {
		case "의자":
			category_id = 1;
			break;
		case "책상":
			category_id = 2;
			break;
		case "침대":
			category_id = 3;
			break;
		case "수납장":
			category_id = 4;
			break;
		case "커튼":
			category_id = 5;
			break;
		case "벽지":
			category_id = 6;
			break;
		}
		List<Products> result = session.selectList("ProductMapper.getCategoryProducts",category_id);
		session.close();
		return result;
	}
}