package com.smhrd.controller_product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Basket;
import com.smhrd.model.BasketDAO;
import com.smhrd.model.Products;
import com.smhrd.model.ProductsDAO;
import com.smhrd.model.Reserved;
import com.smhrd.model.ReservedDAO;
import com.smhrd.model.User;

@WebServlet("/ReservedController")
public class ReservedController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		String id = user.getId();
		int prod_id = Integer.parseInt(request.getParameter("prod_id"));
		String total_op = request.getParameter("total_op");
		String [] colors = total_op.split(",");
		ReservedDAO rs_dao = new ReservedDAO();
		for(String color : colors) {
			System.out.println(color);
			Reserved rs = new Reserved(0, prod_id, id, null, color);
			int result= rs_dao.insertReserved(rs);
			System.out.println(result);
		}
		response.sendRedirect("Mypage_Reserved.jsp");
	}
}
