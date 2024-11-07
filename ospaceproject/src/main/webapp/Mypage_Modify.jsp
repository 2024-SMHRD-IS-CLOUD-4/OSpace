<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div id="header">
        <div id="logo">
            <a href="Main.jsp">
                <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                O'Space
            </a>
        </div>
        <div id="serch">
            <button type="button" class="serch">
                <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                |
                <div>검색하기</div>
            </button>
        </div>
        <div id="login">
            <span>로그인</span>
            <span><a href="#">고객센터</a></span>
        </div>
        <div id="information">
            <span>Name님</span>
            <span><a href="#">고객센터</a></span>
        </div>
    </div>

    <div id="Category">
        <div id="nava">
            <ul>
                <li>카테고리</li>
                <li>리뷰보기</li>
                <li>중고거래</li>
            </ul>
        </div>
    </div>

    <div id="body">
        <div id="left">
            <p>일반회원</p>
            <ul>
                <li>회원정보수정</li>
                <li>리뷰</li>
                <li>중고거래</li>
                <li>장바구니</li>
                <li>주문내역</li>
            </ul>
        </div>
    </div>
	<%
		User user = (User)session.getAttribute("user");
	%>
    <div id="right">
        <p>회원정보수정</p>
        <br>
        <p>변경할 정보가 있으시면 작성 후 하단에 있는 "저장"버튼을 눌러주세요<br>단, 아이디는 변경하실 수 없습니다</p>
		<form action="UpdateController" method="post" id="update">
        <table>
            <tr>
                <td class="#">아이디</td>
                <td class="#"><span><%=user.getId()%></span></td>
            </tr>

            <tr>
                <td class="#">비밀번호
                    <input class="#" type="password" name="pw" placeholder="변경할 비밀번호를 입력해주세요">
                </td>
            </tr>
			
			<tr>
                <td class="#">비밀번호 확인
                    <input class="#" type="password" id="pwCheck" placeholder="비밀번호를 다시 입력해주세요">
                    <span id="pwCheckResult"></span>
                </td>
            </tr>
			
            <tr>
                <td class="#">이름
                    <input class="#" type="text" name="name" value=<%=user.getName() %>>
                </td>
            </tr>

            <tr>
                <td class="#">주소
                    <input class="#" type="text" name="addr" value=<%=user.getAddr() %>>
                </td>
            </tr>

            <tr>
                <td class="#">연락처
                    <input class="#" type="tel" name="phone" value=<%=user.getPhone() %>>
                </td>
            </tr>
        </table>
        <div>
            <input type="submit" value="저장하기">
        </div>
        <input type="hidden" name="id" value=<%=user.getId() %>>
		</form>
		<div>
			<form action="DeleteController">
			<input type="hidden" name="id" value=<%=user.getId() %>>
            <input type="submit" value="회원탈퇴">
            </form>
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
    let pwCheckResult = false;
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