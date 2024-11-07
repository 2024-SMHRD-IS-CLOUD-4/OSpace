<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
	<%@ include file = "Header.jsp" %>
	<div id="body">
		<div class="itemBox">
			<div class="joinTitle">
				<h1 class="mainItemTitle">회원가입</h1>  
			</div>
			<form action="JoinController">
				<table  class="joinBox">
					<tr>
						<td class="joinBoxTitle">가입유형</td>
						<td class="joinBoxContents" style=" border:none;">
							<input type="radio" name="u_type" value="일반회원"><span>일반회원</span>
							<input type="radio" name="u_type" value="판매자회원"><span>판매자회원</span>
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">아이디 입력</td>
						<td class="joinBoxContents">
							<input type="text" name="id" placeholder="아이디를 입력해주세요.">
							<button type="button" id="idCheckBtn">중복확인</button>
							<span id="idCheckResult"></span>
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">비밀번호 입력</td>
						<td class="joinBoxContents">
							<input type="password" name="pw" placeholder="비밀번호를 입력해주세요.">
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">비밀번호 재입력<span id="pwCheck"></span></td>
						<td class="joinBoxContents">
							<input type="password" name="pwCheck" placeholder="비밀번호를 다시 한번 입력해주세요.">
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">닉네임 입력</td>
						<td class="joinBoxContents">
							<input type="text" name="name" placeholder="닉네임을 입력해주세요.">
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">주소</td>
						<td class="joinBoxContents">
							<input type="text" name="addr" placeholder="주소를 입력해주세요.">
						</td>
					</tr>
					<tr>
						<td class="joinBoxTitle">전화번호</td>
						<td class="joinBoxContents">
							<input type="text" name="phone" placeholder="전화번호를 입력해주세요.">
						</td>
					</tr>
				</table>
				<div id="submitBox">
					<input type="submit" id="submit" value="가입하기">
				</div>
			</form>
			<div id="JoinIdPwButtonBox">
				<span>
					<a href="Join.html"><button>회원가입</button></a> | 
					<a href="IdFind"><button>아이디 찾기</button></a> | 
					<a href="PwFind"><button>비밀번호 찾기</button></a>
				</span>
			</div>
		</div>
		
	</div>
	<%@ include file = "Footer.jsp" %>
	<!-- 회원가입 실패 시 모달창 -->
	<!--  <div id="joinFailBg">
        <div id="joinFail">
            <div><button class="closeBtn">X</button></div>
            <div class="joinFailText">
                <h2> 회원가입에 <br> 실패하셨습니다 </h2>

                <p> 
                    작성하지 않은 내용이 있거나 <br> 
                    올바르지 않는 내용이 있을 경우 <br>
                    회원가입이 어렵습니다.
                </p>
            </div>
            <div class="joinFailBtn">
                <span>
                    <button>다시 작성하기 </button>
                    <a href="Main.html">
                        <button>홈으로 돌아가기</button>
                    </a>
                </span>
            </div>
        </div>
    </div>-->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script type="text/javascript">
		$("#idCheckBtn").on("click", ()=>{
			let id = $('[name="id"]').val();
			
			$.ajax({
				url : "IdCheckController", 
				type : "get", 
				data : {"id":id},
				success : (data)=>{
					console.log(data);
					
					if(data==0){
						$("#idCheckResult").text("사용 가능 아이디");
					}else{
						$("#idCheckResult").text("사용 불가 아이디");
					}
				},
				error : () => {
					alert("통신실패");
				}
			})
		})
		$()=>{
			let pw =$('[name="pw"]').val();
			let pwCheck
		}
		</script>



</body>
</html>