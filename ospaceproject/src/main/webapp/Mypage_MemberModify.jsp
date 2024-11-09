<%@ page import="com.smhrd.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
	<%@ include file="Header.jsp" %>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp"%>
			<div id="myPageRight">
				<form action="UpdateController" method="post" id="update">
				<h2>회원정보수정</h2>
				<div id="myPageContainer">
                                <div>
                                    <p>변경할 정보가 있으시면 작성 후 하단에 있는 “저장”버튼을 눌러주세요.
                                        <br>단 아이디는 변경하실 수 없습니다
                                    </p><br><br>
                                    <div class="MembertableContainer">
                                        <table class="MemberTable">
                                            <tr class="tr">
                                                <td class="td">아이디</td>
                                                <td class="MemtableColumns"><span><%=user.getId()%></span></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">비밀번호</td>
                                                <td class="MemtableColumns"><input type="password" class="Memtableinput"
                                                       name="pw" placeholder="<%=user.getPw()%>"></td>
                                            </tr>
                                            
											<tr class="tr">
                                                <td class="td">비밀번호 확인</td>
                                                <td class="MemtableColumns"><input type="password" class="Memtableinput"
                                                       id="pwCheck" placeholder="<%=user.getPw()%>"></td>
                                            </tr>
                                            
                                            <tr class="tr">
                                                <td class="td">이름</td>
                                                <td class="MemtableColumns"><input type="text" class="Memtableinput"
                                                       name="name" placeholder="<%=user.getName()%>">
                                                </td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">주소</td>
                                                <td class="MemtableColumns"><input type="text" class="Memtableinput"
                                                        name="addr" placeholder="<%=user.getAddr()%>"></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">연락처</td>
									<td class="MemtableColumns">
										<input class="Memtableinput" type="tel" name="phone" placeholder="<%=user.getPhone()%>">
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="buttonContainer">
						<input class="AllBtn" type="submit" value="저장하기">
					</form>
					<form action="DeleteController" class="fromBlock">
						<input type="hidden" name="id" value=<%=user.getId() %>>
						<input class="AllBtn" type="submit" value="회원탈퇴">
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