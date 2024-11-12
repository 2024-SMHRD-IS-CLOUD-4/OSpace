package com.smhrd.controller_used;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Used_ProductsDAO;

@WebServlet("/SoldStateController")
public class SoldStateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String asd = request.getParameter("sold_state");
		char sold_state = 's';
		if(asd.equals("판매중")) {
			sold_state ='N';
		}else {
			sold_state ='Y';
		}
		Used_ProductsDAO up_dao = new Used_ProductsDAO();
		int result = up_dao.updateUsed(sold_state);
		if(result>0) {
			response.sendRedirect("Mypage_ProductList.jsp");
		}
		
	}

}
