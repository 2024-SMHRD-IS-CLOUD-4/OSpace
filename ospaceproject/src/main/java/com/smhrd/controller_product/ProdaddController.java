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
import com.smhrd.model.Products;
import com.smhrd.model.ProductsDAO;


@WebServlet("/ProdaddController")
public class ProdaddController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 한글 인코딩
		request.setCharacterEncoding("UTF-8");
				
		String id = request.getParameter("id");
		int category_id = Integer.parseInt(request.getParameter("category_id"));
		
	    String prod_name = request.getParameter("used_title");
	    String prod_img = request.getParameter("used_img");
	    
	    int prod_price = Integer.parseInt(request.getParameter("used_price"));
	    
	    String prod_color = request.getParameter("prod_color");
	    String prod_desc = request.getParameter("used_content");
	    
	    Products m = new Products(0, id, category_id, prod_name, prod_img, prod_price, prod_color,0,null,"옵션",prod_desc);
	    ProductsDAO dao = new ProductsDAO();
	    int result = dao.insert(m);
	    if(result >0) {
	    	response.sendRedirect("Mypage_ProductList.jsp");
	    }
	}
}