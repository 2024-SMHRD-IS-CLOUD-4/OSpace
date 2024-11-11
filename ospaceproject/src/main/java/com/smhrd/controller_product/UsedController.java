package com.smhrd.controller_product;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Used_Products;
import com.smhrd.model.Used_ProductsDAO;

@WebServlet("/UsedController")
public class UsedController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String id = request.getParameter("id");
		String used_title = request.getParameter("used_title");
		String used_content = request.getParameter("used_content");
		int used_price = Integer.parseInt(request.getParameter("used_price"));
		String used_location = request.getParameter("used_location");
		String used_img = request.getParameter("used_img");

		Used_Products used_product = new Used_Products(0, id, used_title, used_price, used_location, 0, used_img, null,
				'n', used_content);

		Used_ProductsDAO dao = new Used_ProductsDAO();
		int result = dao.insert(used_product);

		if (result > 0) {
			response.sendRedirect("Mypage_ProductList.jsp");
		} else {
			response.sendRedirect("Mypage_UsedProductAdd.jsp");
		}

	}

}
