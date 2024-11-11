package com.smhrd.controller_order;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Basket;
import com.smhrd.model.BasketDAO;
import com.smhrd.model.Order;
import com.smhrd.model.OrderDetail;
import com.smhrd.model.OrderDetailDAO;
import com.smhrd.model.OrdersDAO;
import com.smhrd.model.Products;
import com.smhrd.model.ProductsDAO;
import com.smhrd.model.User;

@WebServlet("/AddOrderController")
public class AddOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		String id = user.getId();
		int paid_amount = 0;
		BasketDAO b_dao = new BasketDAO();
		OrderDetailDAO od_dao = new OrderDetailDAO();
		ProductsDAO p_dao = new ProductsDAO();
		String basket_lst = request.getParameter("basket_lst");
		String arr[] = basket_lst.split(",");
		int basket_ids[] = new int[arr.length];
		for (int i = 0; i < arr.length; i++) {
			basket_ids[i] = Integer.parseInt(arr[i]);
		}

		// order 테이블에 삽입
		for (int basket_id : basket_ids) {
			Basket b = b_dao.getBasket(basket_id);
			Products p = p_dao.getSingleProduct(b.getProd_id());
			paid_amount += p.getProd_price();
		}
		int pay_amount = basket_ids.length;
		Order order = new Order(0, id, pay_amount, "카드", paid_amount, null, "결제완료");
		OrdersDAO o_dao = new OrdersDAO();
		int order_id = o_dao.insertOrder(order);
		System.out.println(order_id);
		// orderDetail 삽입
		for (int basket_id : basket_ids) {
			Basket b = b_dao.getBasket(basket_id);
			OrderDetail od = new OrderDetail(0, order_id, b.getProd_color(), null);
			int result = od_dao.insertOrderDetail(od);
			b_dao.deleteBasket(basket_id);
		}
		response.sendRedirect("Mypage_Basket.jsp?bye=123");
	}
}