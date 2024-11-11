package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class OrdersDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Order> getMyOrders(String id){
		SqlSession session = factory.openSession(true);
		List<Order> result = session.selectList("OrderMapper.getMyOrders",id);
		session.close();
	    return result;
	}
	
	public List<Order> deleteOrder(int order_id){
		SqlSession session = factory.openSession(true);
		List<Order> result = session.selectList("OrderMapper.deleteOrder",order_id);
		session.close();
	    return result;
	}
	
	public int insertOrder(Order order){
		SqlSession session = factory.openSession(true);
		int result = session.insert("OrderMapper.deleteOrder",order);
		session.close();
	    return result;
	}
	
}
