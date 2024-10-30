<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.a {
	position: absolute;
	width: 280px;
	height: 530px;
	top: 394px;
	left: 579px;
	gap: 0px;
	border: 1px 0px 0px 0px;
	opacity: 0px;
}

.b {
	position: absolute;
	width: 700px;
	height: 530px;
	top: 394px;
	left: 879px;
	gap: 0px;
	border-radius: 10px 0px 0px 0px;
	border: 1px 0px 0px 0px;
	opacity: 0px;
}

.user {
	position: absolute;
	width: 300px;
	height: 36px;
	top: 202px;
	left: 579px;
	border: 1px;
}

.order {
	width: 609px;
	height: 80px;
	top: 477px;
	left: 909px;
}

.review {
	width: 204px;
	height: 56px;
	top: 433px;
	left: 617px;
	gap: 0px;
	opacity: 0px;
}
</style>
</head>
<body>
	<%
	User user = (User) session.getAttribute("user");
	String name = user.getName();
	String u_type = user.getU_type();
	%>
	<div class="user">
		<h1><%=u_type%><br><%=name%>님 반갑습니다!
		</h1>
	</div>
	<!-- 리뷰 모음(일반회원) / 상품순위(판매자) 확인 구역 
		
	-->
	<div class="a">
		<ul>
			<li class="review"></li>
			<li class="review"></li>
			<li class="review"></li>
			<li class="review"></li>
		</ul>
	</div>

	<!-- 주문 내역 확인 구역 
		상품 이미지, 등록일자, 상품명, 색상, 개수, 가격, 주문 상태
	-->
	<div class="b">
		<ul>
			<li><h2>주문내역</h2></li>
			<li class="order"></li>
			<li class="order"></li>
			<li class="order"></li>
			<li class="order"></li>
		</ul>
	</div>
</body>
</html>