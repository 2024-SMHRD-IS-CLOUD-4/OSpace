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
								<input class="reviewCheckBox" type="checkbox" name="check" value="<%=rs.getReserved_id()%>"/>
							</td>
							<td>
								<p>
									<img class="reviewImg" src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								</p>
							</td>
							<td >
								<p class="reviewName"><%=p.getProd_name() %></p>
								<p class="reviewText">가격 : <%=p.getProd_price() %>원</p>
							</td>
							<td>
								<p class="reviewDate">상품Id : <%=p.getCategory_id() %></p>
							</td>
						</tr>
						<%} %>
					</table>
				</div>
				<form action="DeleteReservedController" class="fromBlock">
						<input type="hidden" id="delete_reserved" name="delete_reserved" value="">
						<button class="AllBtn" type="submit">찜 삭제</button>
					</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		let checks = document.getElementsByName("check");
		let delete_reserved = document.getElementById('delete_reserved');
		for(let i=0;i<checks.length;i++){
			checks[i].addEventListener('click',()=>{
				delete_reserved.value += checks[i].value+",";
			})
		}
	</script>
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