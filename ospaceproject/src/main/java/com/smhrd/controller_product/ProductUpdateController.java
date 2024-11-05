package com.smhrd.controller_product;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Products;
import com.smhrd.model.ProductsDAO;

@WebServlet("/ProductUpdateController")
public class ProductUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int prod_id = Integer.parseInt(request.getParameter("prod_id"));
		int category = Integer.parseInt(request.getParameter("category"));
		String name = request.getParameter("name");
		String img = request.getParameter("img");
		int price = Integer.parseInt(request.getParameter("price"));
		String color = request.getParameter("color");
		String content = request.getParameter("content");
		Products p = new Products(prod_id, null, category, name, img, price, color, null, content);
		ProductsDAO dao = new ProductsDAO();
		int result = dao.update(p);
		if (result > 0) {
			response.sendRedirect("ProductList.jsp");
		} else {
			response.sendRedirect("ProductList.jsp");
		}
	}
}