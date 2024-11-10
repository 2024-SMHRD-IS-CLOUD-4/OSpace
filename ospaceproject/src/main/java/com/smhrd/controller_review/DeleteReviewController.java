package com.smhrd.controller_review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReviewsDAO;

@WebServlet("/DeleteReviewController")
public class DeleteReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String result = request.getParameter("result");
		String arr [] = result.split(",");
		ReviewsDAO dao = new ReviewsDAO();
		int review_ids [] = new int [arr.length];
		for(int i =0;i<arr.length;i++) {
			review_ids[i] = Integer.parseInt(arr[i]);
			int review_id = review_ids[i];
			dao.deleteReview(review_id);
		}
		response.sendRedirect("Mypage_reviewsList.jsp");
		
	}
}
