package com.smhrd.controller_reserved;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.ReservedDAO;

@WebServlet("/DeleteReservedController")
public class DeleteReservedController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String delete_reserved = request.getParameter("delete_reserved");
		String arr [] = delete_reserved.split(",");
		int [] reserved_ids = new int [arr.length];
		for(int i=0;i<arr.length;i++) {
			reserved_ids[i] = Integer.parseInt(arr[i]);
		}
		ReservedDAO r_dao = new ReservedDAO();
		
		for(int reserved_id : reserved_ids) {
			int result = r_dao.deleteReserved(reserved_id);
			System.out.println(result);
		}
		
		response.sendRedirect("Mypage_Reserved.jsp");
		
	}
}
