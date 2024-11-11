package com.smhrd.controller_basket;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.Basket;
import com.smhrd.model.BasketDAO;
import com.smhrd.model.User;

@WebServlet("/DeleteBasketController")
public class DeleteBasketController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String delete_lst = request.getParameter("basket_lst");
		String [] arr = delete_lst.split(","); 
		int [] baskets = new int [arr.length]; 
		for(int i=0;i<arr.length;i++) {
			baskets[i] = Integer.parseInt(arr[i]);
		}
		BasketDAO b_dao = new BasketDAO();
		for(int basket : baskets) {
		int result = b_dao.deleteBasket(basket);
		System.out.println(result);
		}
		
    	response.sendRedirect("Mypage_Basket.jsp");
	   
	
		
	}

}
