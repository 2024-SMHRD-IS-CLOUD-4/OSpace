package com.smhrd.controller_review;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.smhrd.model.Reviews;
import com.smhrd.model.ReviewsDAO;

@WebServlet("/ReviewController")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("UTF-8");
		
		ServletContext context = request.getServletContext();
		String uploadpath = context.getRealPath("upload");
		
		int maxSize = 5*1024*1024;
		
		MultipartRequest multi = new MultipartRequest(request, uploadpath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
		
		String id = multi.getParameter("id");
		int prod_id = Integer.parseInt(multi.getParameter("prod_id"));
		String review_title = multi.getParameter("review_title");
		String review_content = multi.getParameter("review_content");
		String review_img = multi.getFilesystemName("review_img");
		int ratings = Integer.parseInt(multi.getParameter("ratings"));
		String review_tag = multi.getParameter("review_tag");
		Reviews review = new Reviews(0, id, prod_id, review_title, review_content, review_img, ratings, review_tag, null);
		ReviewsDAO dao = new ReviewsDAO();
		int result = dao.insert(review);
		
		if(result >0) {
	    	response.sendRedirect("ReviewsList.jsp");
	    }else {
	    	response.sendRedirect("Reviews.jsp");
	    }
		
	}

}
