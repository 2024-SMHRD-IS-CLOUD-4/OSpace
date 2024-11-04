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
import com.smhrd.model.Used_Products;
import com.smhrd.model.Used_ProductsDAO;


@WebServlet("/UsedController")
public class UsedController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = request.getServletContext();
		String uploadpath = context.getRealPath("used");
		
		int maxSize = 5*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("id");
		String used_title = multi.getParameter("used_title");
		String used_content = multi.getParameter("used_content");
		int used_price = Integer.parseInt(multi.getParameter("used_price"));
		String used_location = request.getParameter("used_location");
		String used_img = multi.getFilesystemName("used_img");
		
		Used_Products usedproduct = new Used_Products(id, used_title, used_content, used_price, used_location, used_img); 
		
		Used_ProductsDAO dao = new Used_ProductsDAO();
		int result = dao.insert(usedproduct);
		
		 if(result >0) {
		    	response.sendRedirect("Used_ProductsList.jsp");
		    }else {
		    	response.sendRedirect("UsedAdd.jsp");
		    }
		
	
	}

}
