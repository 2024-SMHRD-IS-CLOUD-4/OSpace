package com.smhrd.database;
// SQLSession 생성 공장

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
	
	// SqlSession -> DB 관련한 작업(한 가지)
	// SqlSession 객체 : DB 연결, SQL 실행같은 DB 관련된 한가지 작업을 수행하는 객체
	
	public static SqlSessionFactory sqlSessionFactory;
	
	// mybatis-config.xml에 작성되어 있는 값을 가지고 공장을 생성!
	// -> 클래스가 로딩되면 딱 한번만 실행하고 실행하지 않음!
	
	// static 키워드 -> 정적인 저장 공간
	static {
		// 1. 설정파일 읽어오기
		String resource = "com/smhrd/database/mybatis-config.xml";
		try {
			// Reader 사용해 정보를 읽어와 Factory 생성
			Reader reader = Resources.getResourceAsReader(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 생성된 Factory 반환 메소드
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}