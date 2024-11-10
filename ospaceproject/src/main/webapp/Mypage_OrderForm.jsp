<%@ page import="com.smhrd.model.User"%>
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
	<%@ include file="Header.jsp"%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp"%>
			<div id="myPageRight">
				<form action="" method="post" id="">
					<h2>주문하기</h2>
					<div id="myPageContainer">
						<table id="orderC">
							<tr>
								<th>주문 상품명</th>
								<td>
									<p>상품명상품명상품명<span>00,000원 / 00개</span></p>
									<p>상품명상품명상품명<span>00,000원 / 00개</span></p>
								</td>
							</tr>

							<tr>
								<th>총 결제금액</th>
								<td>00,000원</td>
							</tr>
							
							<tr>
								<th>받으실 분</th>
								<td>김00</td>
							</tr>
							
							<tr>
								<th>받으실 주소</th>
								<td>광주광역시 블라블라</td>
							</tr>
							<tr>
								<th>받으실 분 연락처</th>
								<td>010-000-0000</td>
							</tr>

						</table>
					</div>
					<div class="buttonContainer">
						<button class="AllBtn" type="submit" >결제하기</button>
					</div>
				</form>
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