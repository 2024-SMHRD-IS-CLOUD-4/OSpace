<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		int type = Integer.parseInt(request.getParameter("type"));
	%>
	<script type="text/javascript">
		
	</script>
	<div>X</div>
	<form action="JoinController">
		<table>
			<tr>
				<%if(type==1){%>
					<td colspan="2"><h1>일반회원 가입하기</h1></td>
				<%}else{%>
					<td colspan="2"><h1>판매자회원 가입하기</h1></td>
				<%} %>
			</tr>
			<tr>
				<td colspan="2"><b>전부 입력해주셔야 회원가입이 가능합니다.</b></td>
			</tr>
			<tr>
				<td class="s">아이디</td>
				<td class="s1"><input type="text" name="id"
					placeholder="사용하실 아이디를 입력해주세요.">
					<button type="button" id="idCheck">중복확인</button></td>
			</tr>

			<tr>
				<td class="s">비밀번호</td>
				<td class="s1"><input type="password" name="pw1"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s"></td>
				<td class="s1"><input type="password" name="pw2"
					placeholder="비밀번호를 다시 한번 입력해주세요."></td>
			</tr>
			<tr>
				<td class="s">이름</td>
				<td class="s1"><input type="password" name="pw1"
					placeholder="사용하실 비밀번호를 입력해주세요."></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="가입하기">
		</div>
	</form>
	<span><a href="JoinType.html"><button>회원가입</button></a> | <a href="IdFind"><button>아이디 찾기</button></a> | <a href="PwFind"><button>비밀번호 찾기</button></a></span>

</body>
</html>