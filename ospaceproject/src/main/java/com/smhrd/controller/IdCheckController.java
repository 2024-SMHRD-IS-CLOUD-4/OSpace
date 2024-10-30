package com.smhrd.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;

@WebServlet("/IdCheckController")
public class IdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println(id);
		UserDAO dao = new UserDAO();
		int result = dao.idCheck(id);
		// result : 입력한 값이 db에 있으면 true => 사용 불가 아이디
		// 없으면 false => 사용 가능 아이디
		
		// PrintWriter 객체 활용 : 서버로부터 클라이언트로 텍스트 보낼 수 있는 통로
		PrintWriter out = response.getWriter();
		out.println(result);
			
	}

}
