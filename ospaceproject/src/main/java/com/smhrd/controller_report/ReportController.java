package com.smhrd.controller_report;


import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Reports;
import com.smhrd.model.ReportDAO;


@WebServlet("/ReportController")
public class ReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// 파라미터 값 가져오기
        int prod_id = Integer.parseInt(request.getParameter("prod_id"));
        String id = request.getParameter("id");
        String r_title = request.getParameter("r_title");
        String r_content = request.getParameter("r_content");

        // Report 객체 생성 및 DAO 호출
        Reports report = new Reports(prod_id, id, r_title, r_content);
        report.setProd_id(prod_id);
        report.setId(id);
        report.setR_title(r_title);
        report.setR_content(r_content);

        ReportDAO dao = new ReportDAO();
        dao.insertReport(report);

        // 신고 리스트 페이지로 리다이렉트
        response.sendRedirect("ReportList.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // 모든 신고 목록 조회
        ReportDAO dao = new ReportDAO();
        List<Reports> reportList = dao.getAllReports();

        // 결과를 JSP로 전달
        request.setAttribute("reportList", reportList);
        request.getRequestDispatcher("ReportList.jsp").forward(request, response);
		
	}

}
