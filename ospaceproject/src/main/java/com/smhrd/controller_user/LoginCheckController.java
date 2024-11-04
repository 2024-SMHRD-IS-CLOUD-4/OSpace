package com.smhrd.controller_user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.UserDAO;

@WebServlet("/LoginCheckController")
public class LoginCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		UserDAO dao = new UserDAO();
		int result = 0;
		if(id==null) {
			result = dao.pwCheck(pw);
			PrintWriter out = response.getWriter();
			out.println(result);
		}else {
			result = dao.idCheck(id);
			PrintWriter out = response.getWriter();
			out.println(result);
		}
	}

}
