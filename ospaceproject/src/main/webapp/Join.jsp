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
	<form action="JoinController">
		<table>
			<tr>
				<td class="s">가입유형</td>
				<td class="s1"><input type="radio" name="u_type" value="일반회원">일반회원
					<input type="radio" name="u_type" value="판매자회원">판매자회원</td>
			</tr>
			<tr>
				<td class="s">아이디 입력</td>
				<td class="s1"><input type="text" name="id"
					placeholder="아이디를 입력해주세요.">
					<button type="button" id="idCheckBtn">중복확인</button> <span
					id="idCheckResult"></span></td>
			</tr>

			<tr>
				<td class="s">비밀번호 입력</td>
				<td class="s1"><input type="password" name="pw"
					placeholder="비밀번호를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">비밀번호 재입력<span id="pwCheck"></span></td>
				<td class="s1"><input type="password" name="pwCheck"
					placeholder="비밀번호를 다시 한번 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">닉네임 입력</td>
				<td class="s1"><input type="text" name="name"
					placeholder="닉네임을 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">주소</td>
				<td class="s1"><input type="text" name="addr"
					placeholder="주소를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">전화번호</td>
				<td class="s1"><input type="text" name="phone"
					placeholder="전화번호를 입력해주세요."></td>
			</tr>
		</table>
		<div>
			<input type="submit" id="submit" value="가입하기">
		</div>
	</form>
	</div>
	<span><a href="Join.html"><button>회원가입</button></a> | <a
		href="IdFind"><button>아이디 찾기</button></a> | <a href="PwFind"><button>비밀번호
				찾기</button></a></span>
	<%@ include file = "Footer.jsp" %>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script type="text/javascript">
		$("#idCheckBtn").on("click", ()=>{
			let id = $('[name="id"]').val();
			
			$.ajax({
				url : "IdCheckController", // 요청 경로 -> 상대 경로는 앞에 '/' 생략
				type : "get", // 요청 방식 (get,post)
				data : {"id":id}, // 요청 데이터 (json{key:value,~})
				success : (data)=>{
					console.log(data);
					
					if(data==0){ // 사용 불가능 아이디
						$("#idCheckResult").text("사용 가능 아이디");
					}else{
						$("#idCheckResult").text("사용 불가 아이디");
					}
				},
				error : () => { // 통신 실패
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