package com.smhrd.model;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.smhrd.database.SqlSessionManager;

public class ReportDAO {
    SqlSessionFactory factory = SqlSessionManager.getSqlSessionFactory();

    // 신고 등록
    public int insertReport(Reports report) {
        SqlSession sqlSession = factory.openSession(true);
        int result = sqlSession.insert("Mapper.insertReport", report);
        sqlSession.close();
        return result;
    }

    // 모든 신고 조회
    public List<Reports> getAllReports() {
        SqlSession sqlSession = factory.openSession(true);
        List<Reports> reports = sqlSession.selectList("Mapper.getAllReports");
        sqlSession.close();
        return reports;
    }
}
