<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	int prod_id = Integer.parseInt(request.getParameter("prod_id"));  
	ProductsDAO dao = new ProductsDAO();
	dao.incrementViews(prod_id);
	Products p = dao.getSingleProduct(prod_id);
%>
	<h1>상세 정보</h1>
	<img id="img" src="<%= request.getContextPath() %>/upload/<%= p.getProd_img() %>">
	<p id="prod_name"><%= p.getProd_name()%></p>
	<p id="prod_price"></p>
	
	<form action="BasketController" method="post">
	<input type="hidden" name="prod_id" value="<%=p.getProd_id()%>">
	<input type="submit" value="장바구니 담기">
	</form>
	<form action="ReservedController" method="post">
	<input type="hidden" name="prod_id" value="<%=p.getProd_id()%>">
	<input type="submit" value="찜하기">
	</form>
	
</body>
</html>