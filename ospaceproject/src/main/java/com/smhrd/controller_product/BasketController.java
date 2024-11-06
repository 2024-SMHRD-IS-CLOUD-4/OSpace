package com.smhrd.controller_product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.Products;
import com.smhrd.model.ProductsDAO;

@WebServlet("/BasketController")
public class BasketController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		int prod_id = Integer.parseInt(request.getParameter("prod_id"));
		ProductsDAO dao = new ProductsDAO();
		Products p = dao.getSingleProduct(prod_id);
		int result = dao.insertBasket(p);
		if(result > 0) {
	    	response.sendRedirect("Basket.jsp");
	    }
	}
}