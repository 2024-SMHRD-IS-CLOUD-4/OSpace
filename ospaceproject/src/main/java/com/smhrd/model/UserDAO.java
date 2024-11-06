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
		int result = session.insert("UserMapper.join",user);
		session.close();
		return result;
	}
	public User login(User user) {
		SqlSession session = factory.openSession(true);
		User result = session.selectOne("UserMapper.login",user);
		session.close();
		return result;
	}
	
	public int update(User user) {
		SqlSession session = factory.openSession(true);
		int result = session.update("UserMapper.update",user);
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
		int result = session.delete("UserMapper.deleteone",id);
		session.close();
		return result;
	}
	// id 중복 체크 기능
	public int idCheck(String id) {
		SqlSession session = factory.openSession(true);
		int result = session.selectOne("UserMapper.idCheck",id);
		session.close();
		return result;
	}
	public int pwCheck(String pw) {
		SqlSession session = factory.openSession(true);
		int result = session.selectOne("UserMapper.pwCheck",pw);
		session.close();
		return result;
	}
	public String idFind(User user) {
		SqlSession session = factory.openSession(true);
		String result = session.selectOne("UserMapper.idFind",user);
		session.close();
		return result;
	}
}