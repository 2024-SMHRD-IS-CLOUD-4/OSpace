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
<style type="text/css">

</style>
</head>

<body>
			<div id="myPageLeft">
				<div class="myPageLeftUser">
					<h2 class="seller">판매자회원</h2>
					<h2 class="member">일반회원</h2>
					<h2 class="manager">관리자</h2>
				</div>
				<div class="myPageLeftNav">
					<ul>
						<li class="seller">
							상품관리
							<ul>
								<li>상품리스트보기</li>
								<li><a href="Mypage_ProductAdd.jsp">상품등록하기</a></li>
							</ul>
						</li>
						<li class="member">주문관리</li>
						<li class="member"><a href="Mypage_MemberModify.jsp">회원정보수정</a></li>
						<li class="member">리뷰</li>
						<li class="member">찜 목록</li>
						<li class="member">중고거래</li>
						<li class="member">장바구니</li>
						<li class="member">주문내역</li>
						<li class="manager">카테고리관리</li>
						<li class="manager">신고관리</li>
					</ul>
				</div>
			</div>
</body>
</html>