<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>X</div>
	<form action="JoinController">
		<table>
			<tr>
				<td class="s">가입유형</td>
				<td class="s1">
					<input type="radio" name="user_type" value="1">일반회원
					<input type="radio" name="user_type" value="2">판매자회원
				</td>
			</tr>
			<tr>
				<td class="s">아이디 입력</td>
				<td class="s1"><input type="text" name="id"
					placeholder="사용하실 아이디를 입력해주세요.">
				<button type="button" id="idCheckBtn">중복확인</button><span id="idCheck"></span></td>
			</tr>

			<tr>
				<td class="s">비밀번호 입력</td>
				<td class="s1"><input type="password" name="pw"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">비밀번호 재입력</td>
				<td class="s1"><input type="password" name="pwCheck"
					placeholder="비밀번호를 다시 한번 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">닉네임 입력</td>
				<td class="s1"><input type="text" name="nick"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">주소</td>
				<td class="s1"><input type="text" name="address"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">전화번호</td>
				<td class="s1"><input type="text" name="tel"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
		</table>
		<script type="text/javascript">
			document.getElementById("submit").addEventListener("click",()=>{
				if(document.getElementById("pw").)
			})
		</script>
		<div>
			<input type="submit" id="submit" value="가입하기">
		</div>
	</form>
	<span><a href="Join.html"><button>회원가입</button></a> | <a href="IdFind"><button>아이디 찾기</button></a> | <a href="PwFind"><button>비밀번호 찾기</button></a></span>


</body>
</html>