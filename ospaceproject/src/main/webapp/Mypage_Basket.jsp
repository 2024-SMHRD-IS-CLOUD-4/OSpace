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
				<h2>장바구니</h2>
				<div id="myPageContainer">
					<div>
						<table class="reviewSetupTable">
							<tr>
								<td class="reviewCheckBox">
								</td>
								<td colspan="5" class="mypageProductimg">
									상품 상세
								</td>
								<td class="reviewDate">
									날짜
								</td>
							</tr>
							<tr>
								<td class="reviewCheckBox">
									<input name="check" type="checkbox" value="" />
								</td>
								<td class="mypageProductimg">
									<img src="#">
								</td>
								<td class="mypageProductNum">
									상품변호
								</td>
								<td class="reviewName">
									상품명
								</td>
								<td class="mypageProductNum">
									색상옵션
								</td>
								<td class="mypageProductNum">
									가격
								</td>
								<td class="reviewDate">
									날짜
								</td>
							</tr>
						</table>
					</div>
				</div>
				<div class="buttonContainer">
					<button type="button" class="AllBtn">구매하기</button>
					<button type="button" class="AllBtn">삭제하기</button>
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