package com.smhrd.controller_product;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ProductsDAO;

@WebServlet("/DeleteProduct")
public class DeleteProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String result = request.getParameter("result");
		String arr [] = result.split(",");
		ProductsDAO dao = new ProductsDAO();
		int [] prod_ids = new int [arr.length];
		for(int i=0;i<arr.length;i++) {
			prod_ids[i] = Integer.parseInt(arr[i]);
			dao.deleteProduct(prod_ids[i]);
		}
		response.sendRedirect("Mypage_ProductList.jsp");
	}
}