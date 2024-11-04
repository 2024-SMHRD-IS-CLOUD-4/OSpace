<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Used_Products"%>
<%@ page import="com.smhrd.model.Used_ProductsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>중고 상품 목록</h1>

	<%
	Used_ProductsDAO dao = new Used_ProductsDAO();
	List<Used_Products> productList = dao.getu_prod();
	%>

	<table border="1">
		<tr>
			<th>상품 이미지</th>
			<th>제목</th>
			<th>내용</th>
			<th>가격</th>
			<th>지역</th>
		</tr>

		<%
		for (Used_Products usedproduct : productList) {
		%>
		<tr>
            <td><img src="<%=request.getContextPath()%>/used/<%=usedproduct.getUsed_img()%>" alt="상품 이미지" width="100"></td>
            <td><%=usedproduct.getUsed_title()%></td>
            <td><%=usedproduct.getUsed_content()%></td>
            <td><%=usedproduct.getUsed_price()%> 원</td>
            <td><%=usedproduct.getUsed_location()%></td>
        </tr>
		<%
		}
		%>
	</table>
	
</body>
</html>