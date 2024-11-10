package com.smhrd.controller_basket;

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
import com.smhrd.model.User;

@WebServlet("/AddBasketController")
public class AddBasketController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		request.setCharacterEncoding("utf-8");
		User user = (User)session.getAttribute("user");
		String id = user.getId();
		String total_op = request.getParameter("total_op");
		String [] colors = total_op.split(","); 
		int prod_id = Integer.parseInt(request.getParameter("prod_id"));
		BasketDAO b_dao = new BasketDAO();
		for(String color : colors) {
		Basket b = new Basket(0, prod_id, id, "",color); 
		b_dao.insertBasket(b);
		}
		
    	response.sendRedirect("Mypage_Basket.jsp");
	   
	}
}