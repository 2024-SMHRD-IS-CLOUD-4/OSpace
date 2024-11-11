<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ReservedDAO"%>
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
		ProductsDAO p_dao = new ProductsDAO();
		ReservedDAO rs_dao = new ReservedDAO();
		List<Reserved> rs_lst = rs_dao.getMyReserved(user.getId());
	%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp" %>
			<div id="myPageRight">
				<h2>찜 리스트</h2>
				<div id="myPageContainer">
					<table class="reviewSetupTable">
					<% for(Reserved rs : rs_lst){ 
						Products p = p_dao.getSingleProduct(rs.getProd_id());
					%>
						<tr >
							<td>
								<input class="reviewCheckBox" type="checkbox" />
							</td>
							<td>
								<p>
									<img class="reviewImg" src="#">
								</p>
							</td>
							<td >
								<p class="reviewName"><%=p.getProd_name() %></p>
								<p class="reviewText"><%=p.getProd_price() %></p>
							</td>
							<td>
								<p class="reviewDate"><%=p.getCategory_id() %></p>
							</td>
						</tr>
						<%} %>
					</table>
				
				
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