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
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp"%>
			<div id="myPageRight">
				<h2>주문리스트</h2>
				<div id="myPageContainer">
					<ul id="orderBox">
						<li>
							<p><input type="checkbox"></p>
							<p>주문ID</p>
							<p class="orderPN">상품명</p>
							<p>주문수량</p>
							<p>결제금액</p>
							<p>2022-10-30</p>
							<p id="orderS">주문</p>
							<p class="boardContentArrow">▽</p>
							<p class="boardContent">
								<img src="">
								<span>금액 : 00,000원</span><br>
								<span>옵션 : 옵션명 개수</span><br>
								<span>받으실 주소 : 광주광역시 남구</span><br>
								<span>연락처 : 010-000-0000</span><br>
							</p>
						</li>
					</ul>
				</div>
				<div class="buttonContainer">
					<form action="DeleteReviewController" class="fromBlock">
						<input type="hidden" id="" name="" value="">
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
				document.getElementById("result1").value += (checks[i].value+",");
				document.getElementById("result2").value += (checks[i].value+",");
			  	console.log(document.getElementById("result1").value);
			  })
		  }
	</script>
</body>
</html>