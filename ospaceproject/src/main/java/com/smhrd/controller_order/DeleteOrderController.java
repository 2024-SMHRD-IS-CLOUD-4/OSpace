package com.smhrd.controller_order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.OrdersDAO;

@WebServlet("/DeleteOrderController")
public class DeleteOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String delete_order = request.getParameter("delete_order");
		String [] arr = delete_order.split(",");
		int [] order_ids = new int [arr.length];
		for(int i=0;i<arr.length;i++) {
			order_ids[i] = Integer.parseInt(arr[i]);
		}
		OrdersDAO o_dao = new OrdersDAO();
		for(int order_id : order_ids) {
			o_dao.deleteOrder(order_id);
		}
		response.sendRedirect("Mypage_OrderList.jsp");
	}
}
