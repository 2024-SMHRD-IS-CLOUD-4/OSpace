<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Products"%>
<%@ page import="com.smhrd.model.ProductsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>상품 목록</h1>

	<%
	ProductsDAO dao = new ProductsDAO();
	List<Products> productList = dao.getAllProducts();
	%>

	<table border="1">
		<tr>
			<th>상품 이미지</th>
			<th>상품명</th>
			<th>가격</th>
			<th>색상</th>
			<th>옵션</th>
			<th>설명</th>
			<th>조회수</th>
		 </tr>
    <%
        for (Products product : productList) {
    %>
        <tr>
            <td>
                <a href="ProductDetail.jsp?prod_id=<%= product.getProd_id() %>">
                    <img src="<%= request.getContextPath() %>/upload/<%= product.getProd_img() %>" alt="<%= product.getProd_name() %>" width="100">
                </a>
            </td>
            <td><a href="ProductDetail.jsp?prod_id=<%= product.getProd_id() %>"><%= product.getProd_name() %></a></td>
            <td><%= product.getProd_price() %> 원</td>
            <td><%= product.getProd_color() %></td>
            <td><%= product.getProd_op() %></td>
            <td><%= product.getProd_desc() %></td>
            <td><%= product.getProd_views() %></td> <!-- 조회수 표시 -->
        </tr>
    <%
        }
    %>
</table>

</body>
</html>