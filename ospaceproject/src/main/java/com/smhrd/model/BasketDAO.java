package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class BasketDAO {
	
    SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Basket> getMyBasket(String id) {
		SqlSession sqlSession = factory.openSession(true);
		List<Basket> result = sqlSession.selectList("BasketMapper.getMyBasket",id);
        sqlSession.close();
        return result;
	}
	
	public int insertBasket(Basket b) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.insert("BasketMapper.insertBasket", b);
		sqlSession.close();
		return result;
	}
	
	public int deleteBasket(int basket_id) {
		SqlSession sqlSession = factory.openSession(true);
		int result = sqlSession.delete("BasketMapper.deleteBasket", basket_id);
		sqlSession.close();
		return result;
	}
	
	public Basket getBasket(int basket_id){
		SqlSession sqlSession = factory.openSession(true);
		Basket result = sqlSession.selectOne("BasketMapper.getBasket",basket_id);
        sqlSession.close();
        return result;
	}
}
