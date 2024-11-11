package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class OrderDetailDAO {

	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

	public int insertOrderDetail(OrderDetail od){
		SqlSession session = factory.openSession(true);
		int result = session.insert("OrderMapper.insertOrderDetail",od);
		session.close();
	    return result;
	}
	
	public List<OrderDetail> getMyOrderDetails(int order_id){
		SqlSession session = factory.openSession(true);
		List<OrderDetail> result = session.selectList("OrderMapper.getMyOrderDetails",order_id);
		session.close();
	    return result;
	}
	
}
