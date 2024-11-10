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
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script type="text/javascript">
    let pwCheckResult = true;
    $("#pwCheck").on('keyup',()=>{
		let pw =$("[name='pw']").val();
		let pwCheck=$("#pwCheck").val();
		if(pw==pwCheck){
			$("#pwCheckResult").text("")
			pwCheckResult = true;
		}else{
			$("#pwCheckResult").text("비밀번호와 일치하지않습니다.")
			pwCheckResult = false;
		}
	})
	$(document).ready(()=>{
			$('#update').submit((event)=>{
				
				let pw = $("[name='pw']").val();
				let name = $("[name='name']").val();
				let addr = $("[name='addr']").val();
				let phone = $("[name='phone']").val();
				if(!pwCheckResult){
					alert('비밀번호를 확인해주세요.')
					return false;
				}
				if(pw===''){
					alert('비밀번호를 입력하세요.')
					return false;
				}
				if(name===''){
					alert('닉네임을 입력하세요.')
					return false;
				}
				if(addr===''){
					alert('주소를 입력하세요.')
					return false;
				}
				if(phone===''){
					alert('전화번호를 입력하세요.')
					return false;
				}
				$(document).unbind('submit').submit();
			})
		})
		</script>
</body>
</html>