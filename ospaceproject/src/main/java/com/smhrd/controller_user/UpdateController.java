package com.smhrd.controller_user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.User;
import com.smhrd.model.UserDAO;

@WebServlet("/UpdateController")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String phone = request.getParameter("phone");
		
		User user = new User(id, pw, name, addr, phone, null, null);
		UserDAO dao = new UserDAO();
		int result = dao.update(user);
		if(result>0) {
			response.sendRedirect("MyPage.jsp");
		}else {
			response.sendRedirect("Mypage_Modify.jsp");
		}
	}
}
