package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
		String nick = request.getParameter("nick");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		int user_type= Integer.parseInt(request.getParameter("user_type"));
		
		User user = new User(id, pw, nick, tel, address,user_type);
		
		UserDAO dao = new UserDAO();
		int result = dao.join(user);
		if(result>0) {
			response.sendRedirect("Login.html");
		}else {
			response.sendRedirect("JoinFail.html");
		}
	}
}