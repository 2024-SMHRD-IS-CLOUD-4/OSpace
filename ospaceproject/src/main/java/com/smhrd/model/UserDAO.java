package com.smhrd.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.smhrd.database.SqlSessionManager;

public class UserDAO {

	// 데이터베이스에 요청하는 클래스
	SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();
	
	// 회원가입 메소드
	public int join(User user) {
		SqlSession session = factory.openSession(true);
		int result = session.insert("Mapper.join",user);
		session.close();
		return result;
	}
	public User userogin(User user) {
		SqlSession session = factory.openSession(true);
		User result = session.selectOne("Mapper.login",user);
		session.close();
		return result;
	}
	
	public int update(User user) {
		SqlSession session = factory.openSession(true);
		int result = session.update("Mapper.update",user);
		session.close();
		return result;
	}
	
	public List<User>userselect() {
		SqlSession session = factory.openSession(true);
		List<User>result = session.selectList("Mapper.select");
		session.close();
		return result;
	}
	
	public int delete(String id) {
		SqlSession session = factory.openSession(true);
		int result = session.delete("Mapper.deleteone",id);
		session.close();
		return result;
	}
	
	// id 중복 체크 기능
	public boolean idCheck(String id) {
		SqlSession session = factory.openSession(true);
		boolean result = session.selectOne("Mapper.idCheck",id);
		session.close();
		return result;
	}
	
}