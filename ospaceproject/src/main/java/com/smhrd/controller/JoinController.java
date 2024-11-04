package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		String u_type= request.getParameter("u_type");
		
		User user = new User(id, pw, name, addr, phone, u_type, null);
		
		UserDAO dao = new UserDAO();
		int result = dao.join(user);
		if(result>0) {
			response.sendRedirect("Login.html");
		}else {
			response.sendRedirect("JoinFail.jsp");
		}
	}
}