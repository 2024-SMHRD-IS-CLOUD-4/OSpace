package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class OrdersDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public List<Order> getMyOrder(String id){
		SqlSession session = factory.openSession(true);
		List<Order> result = session.selectList("OrderMapper.getMyOrders",id);
		session.close();
	    return result;
	}
	
}
