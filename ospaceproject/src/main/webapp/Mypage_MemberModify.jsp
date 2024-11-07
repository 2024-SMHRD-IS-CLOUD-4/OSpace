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
                                                <td class="MemtableColumns"><input class="Memtableinputno"
                                                        placeholder="로그인된 ID 노출(변경불가)"></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">비밀번호</td>
                                                <td class="MemtableColumns"><input class="Memtableinput"
                                                        placeholder="로그인한 사용자의 비밀번호 입력되어있음"></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">이름</td>
                                                <td class="MemtableColumns"><input class="Memtableinput"
                                                        placeholder="로그인한 사용자 이름 입력">
                                                </td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">주소</td>
                                                <td class="MemtableColumns"><input class="Memtableinput"
                                                        placeholder="로그인한 사용자의 주소 자동 입력되었음"></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">연락처</td>
									<td class="MemtableColumns">
										<input class="Memtableinput" placeholder="로그인한 사용자의 연락처 자동 입력되었음">
									</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<div class="buttonContainer">
					<button class="AllBtn" type="submit">저장하기</button>
					<button class="AllBtn" type="submit">회원탈퇴</button>
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
</body>
</html>