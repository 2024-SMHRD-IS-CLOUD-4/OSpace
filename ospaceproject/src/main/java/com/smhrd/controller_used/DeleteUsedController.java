package com.smhrd.controller_used;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Used_ProductsDAO;

@WebServlet("/DeleteUsedController")
public class DeleteUsedController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String result = request.getParameter("result");
		String [] arr = result.split(",");
		int [] used_ids = new int [arr.length];
		Used_ProductsDAO up_dao = new Used_ProductsDAO();
		for(int i=0;i<arr.length;i++) {
			used_ids[i]=Integer.parseInt(arr[i]);
			up_dao.deleteUsed(used_ids[i]);
		}
		response.sendRedirect("Mypage_ProductList.jsp");
	}

}
