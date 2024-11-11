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
	%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp"%>
			<div id="myPageRight">
				<h2>주문(결제)내역</h2>
				<div id="myPageContainer">
					<ul id="orderBox">
					<% for(Order o : o_lst){
						String a = o.getProd_ids();
						String [] arr = a.split("/");
						int [] prod_ids = new int [arr.length];
						for(int i=0;i<arr.length;i++){
							System.out.println(arr[i]);
							prod_ids[i] = Integer.parseInt(arr[i]);
						}
					%>
						<li>
							<p><input type="checkbox" name="check" value="<%=o.getOrderId()%>"></p>
							<p><%=o.getOrderId()%></p>
							<p class="orderPN">
							<%for(int prod_id : prod_ids){ 
								Products p = p_dao.getSingleProduct(prod_id);
							%>
							<span>#<%=p.getProd_name()%> </span> 
							<%} %>
							</p>
							<p><%=o.getPayAmount() %></p>
							<p><%=o.getPaidAmount() %></p>
							<p><%=o.getOrderedAt() %></p>
							<p id="orderS">주문</p>
							<p class="boardContentArrow">▽</p>
							<p class="boardContent">
							<%for(int prod_id : prod_ids){ 
								Products p = p_dao.getSingleProduct(prod_id);
							%>
								<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								<span>금액 : <%=p.getProd_price() %>원</span><br>
								<span>옵션 : <%=p.getProd_color() %></span><br>
							<%} %>
								<span>받으실 주소 : <%=user.getAddr() %></span><br>
								<span>연락처 :<%=user.getPhone() %></span><br>
							</p>
						</li>
						<%} %>
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
			  })
		  }
	</script>
</body>
</html>