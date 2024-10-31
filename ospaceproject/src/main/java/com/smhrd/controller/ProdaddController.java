package com.smhrd.controller;

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
				
		// 파일의 절대 경로 설정 (저장 경로)
		ServletContext context = request.getServletContext();
		String uploadpath = context.getRealPath("upload");
				
		// 파일의 사이즈
		int maxSize = 5*1024*1024; // -> 5MB
				
		// cos -> MultipartRequest
		// (request, 파일저장경로, 파일 최대 크기, 인코딩 타입, 파일이름 생성규칙 - 이름이 중복되었을 때 처리)
		MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		
		String id = multi.getParameter("id");
		int category_id = Integer.parseInt(multi.getParameter("category_id"));
		
	    String prod_name = multi.getParameter("prod_name");
	    String prod_img = multi.getFilesystemName("prod_img");
	    
	    int prod_price = Integer.parseInt(multi.getParameter("prod_price"));
	    
	    String prod_color = multi.getParameter("prod_color");
	    String prod_op = multi.getParameter("prod_op");
	    String prod_desc = multi.getParameter("prod_desc");
	    
	    Products m = new Products(1, id, category_id, prod_name, prod_img, prod_price, prod_color, prod_op,prod_desc);
	    ProductsDAO dao = new ProductsDAO();
	    int result = dao.insert(m);
	    
	    if(result >0) {
	    	response.sendRedirect("ProductList.jsp");
	    }
	}

}
