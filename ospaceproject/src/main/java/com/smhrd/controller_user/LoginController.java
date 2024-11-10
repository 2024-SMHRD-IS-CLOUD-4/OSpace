package com.smhrd.controller_user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String referer = request.getHeader("Referer");
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		User loginUser = new User(id, pw);
		UserDAO dao = new UserDAO();
		User result = dao.login(loginUser);
		System.out.println(referer);
		if (result == null) {
			response.sendRedirect("LoginFail.html");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			if(referer.contains("Join.jsp")){
				response.sendRedirect("Main.jsp");
			}else {
				response.sendRedirect(referer);
			}
		}
	}
}