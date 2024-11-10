package com.smhrd.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/TextSeachController")
public class TextSeachController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String text = request.getParameter("searchText");
		String encode_text = URLEncoder.encode(text,"UTF-8");
		String type = request.getParameter("type");
		response.sendRedirect("ItemSearch.jsp?searchType="+type+"&text="+encode_text);
		

	}

}
