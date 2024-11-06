<%@page import="com.smhrd.model.Reserved"%>
<%@page import="java.util.List"%>
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
	<h1>찜 리스트</h1>
	<%
		ProductsDAO dao = new ProductsDAO();
		List<Reserved> lst = dao.getReserved();
	%>
	<%for(Reserved r : lst){ %>
	<%= r.getProd_id() %>
	<%= r.getId() %>	
	<%= r.getReserved_id() %>
	<%} %>
</body>
</html>