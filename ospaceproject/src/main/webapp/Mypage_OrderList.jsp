<%@page import="com.smhrd.model.ProductColors"%>
<%@page import="com.smhrd.model.ProductColorDAO"%>
<%@page import="com.smhrd.model.OrderDetail"%>
<%@page import="com.smhrd.model.OrderDetailDAO"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@ page import="com.smhrd.model.Order"%>
<%@ page import="com.smhrd.model.OrdersDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Board.css" type="text/css" />
</head>

<body>
	<%@ include file="Header.jsp"%>
	<% 
		OrdersDAO o_dao = new OrdersDAO();
		List<Order> o_lst = o_dao.getMyOrders(user.getId());
		ProductsDAO p_dao = new ProductsDAO();
		OrderDetailDAO od_dao = new OrderDetailDAO();
		ProductColorDAO pc_dao = new ProductColorDAO();
		List<Products> p_lst = p_dao.getMyProducts(user.getId());
		
	%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp"%>
			<div id="myPageRight">
				<h2>주문(결제)내역</h2>
				<div id="myPageContainer">
					<ul id="orderBox">
					<%if(user.getU_type().equals("일반회원")){ %>
					<% for(Order o : o_lst){
						List<OrderDetail> od_lst = od_dao.getMyOrderDetails(o.getOrder_id());
					%>
						<li>
							<p><input type="checkbox" name="check" value="<%=o.getOrder_id()%>"></p>
							<p><%=o.getOrder_id()%></p>
							<p class="orderPN">
							
							<span>
							<%for(OrderDetail od : od_lst){ 
							int prod_id = pc_dao.getProd_id(od.getColor_id());
							Products p = p_dao.getSingleProduct(prod_id);%>
							#<%=p.getProd_name()%> 
							<%} %>
							</span> 
							</p>
							<p><%=o.getPay_amount()%>개</p>
							<p><%=o.getPaid_amount() %></p>
							<p><%=o.getOrdered_at() %></p>
							<p id="orderS">주문</p>
							<p class="boardContentArrow">▽</p>
							<p class="boardContent">
							<%for(OrderDetail od : od_lst){ 
								int prod_id = pc_dao.getProd_id(od.getColor_id());
								Products p = p_dao.getSingleProduct(prod_id);
							%>
								<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								<span>금액 : <%=p.getProd_price() %>원</span><br>
								<span>옵션 : <%=od.getColor_id() %></span><br>
							<%} %>
								<span>받으실 주소 : <%=user.getAddr() %></span><br>
								<span>연락처 :<%=user.getPhone() %></span><br>
							</p>
						</li>
						<%}
					}else{
					for(Products p : p_lst){
						List<ProductColors> pc_lst = pc_dao.getProdColor(p.getProd_id());
						for(ProductColors pc :pc_lst){
							List<OrderDetail> od_lst = od_dao.getOrderDetails(pc.getColor_id());
							for(OrderDetail od:od_lst){
					%>
					<li>
							<p><input type="checkbox" name="check" value="<%=od.getColor_id()%>"></p>
							<p><%=od.getOrderd_id()%></p>
							<p class="orderPN">
							
							<span>
							<%
							int prod_id = pc_dao.getProd_id(od.getColor_id());
							%>
							#<%=p.getProd_name()%> 
							</span> 
							</p>
							<p><%=od.getCreatedAt()%></p>
							<p id="orderS">주문</p>
							<p class="boardContentArrow">▽</p>
							<p class="boardContent">
								<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								<span>금액 : <%=p.getProd_price() %>원</span><br>
								<span>옵션 : <%=od.getColor_id() %></span><br>
								<span>받으실 주소 : <%=user.getAddr() %></span><br>
								<span>연락처 :<%=user.getPhone() %></span><br>
							</p>
							<%} %>
							<%} }}%>
						</li>
					</ul>
				</div>
				<div class="buttonContainer">
					<form action="DeleteOrderController" class="fromBlock">
						<input type="hidden" id="delete_order" name="delete_order" value="">
						<button class="AllBtn" type="submit">주문 취소 신청</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
	<nav id="loginMD">
		<%@ include file="MdLogin.jsp"%>
	</nav>
	<nav id="serchMD">
		<%@ include file="MdSerch.jsp"%>
	</nav>
	<%@ include file="HeaderSub.jsp"%>
	<script type="text/javascript">
		  const checks = document.getElementsByName("check");
		  for(let i = 0;i<checks.length;i++){
			  	checks[i].addEventListener("click",()=>{
					document.getElementById("delete_order").value += (checks[i].value+",");
					console.log(document.getElementById("delete_order").value);
			  })
		  }
	</script>
</body>
</html>