<%@page import="com.smhrd.model.Reserved"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp" %>
	<%
		ProductsDAO dao = new ProductsDAO();
		List<Reserved> lst = dao.getReserved();
	%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp" %>
			<div id="myPageRight">
				<h2>찜 리스트</h2>
				<div id="myPageContainer">
					<table class="reviewSetupTable">
						<tr class="tr">
							<td class="td" rowspan="2">
								<input class="reviewCheckBox" type="checkbox" />
							</td>
							<td class="td" rowspan="2">
								<p>
									<img class="reviewImg">
								</p>
							</td>
							<td class="td">
								<p class="reviewName">상품명</p>
							</td>
							<td class="td">

							</td>
						</tr>
						<tr>
							<td class="td">
								<p class="reviewText">가격</p>
							</td>
							<td class="td">
								<p class="reviewDate"> 날짜</p>
							</td>
						</tr>
					</table>
				
				<%for(Reserved r : lst){ %>
				<%= r.getProd_id() %>
				<%= r.getId() %>
				<%= r.getReserved_id() %><br>
				<%} %>
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
</body>
</html>