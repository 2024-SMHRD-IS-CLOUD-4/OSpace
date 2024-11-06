<%@ page import="com.smhrd.model.User" %>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <title>O'Space</title>
            <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
            <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
            <link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
        </head>

        <body>
            <%@ include file="Header.jsp" %>
                <div id="body">
                    <div id="MyPageBox">
                        <div id="myPageLeft">
                            <div id="myPageLeft">
                                <div class="myPageLeftUser">
                                    <h2 class="seller">판매자회원</h2>
                                    <h2 class="member">일반회원</h2>
                                    <h2 class="manager">관리자</h2>
                                </div>
                                <div class="myPageLeftNav">
                                    <ul>
                                        <li class="seller">등록상품관리</li>
                                        <li class="member">주문관리</li>
                                        <li class="member">회원정보수정</li>
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
                        </div>

                        <div id="myPageRight">
                            <h2> 회원정보수정 </h2>
                            <div class="lin"> </div>
                            <p>변경할 정보가 있으시면 작성 후 하단에 있는 “저장”버튼을 눌러주세요.
단 아이디는 변경하실 수 없습니다</p><br><br>
                            <div class="table-container">
                                <table class="table">
                                    <tr class="tr">
                                        <td class="td">아이디</td>
                                        <td class="tablecolumns"><input class="tableinputno" placeholder="로그인된 아이디 노출(변경불가)"></td>
                                    </tr>

                                    <tr class="#">
                                        <td class="td">비밀번호</td>
                                        <td class="tablecolumns"><input class="tableinput" placeholder="변경할 비밀번호를 입력해주세요"></td>
									</tr>

                                    <tr class="#">
                                        <td class="td">이름</td>
                                        <td class="tablecolumns"><input class="tableinput" placeholder="사용자 이름"></td>
									</tr>

                                    <tr class="#">
                                        <td class="td">주소</td>
                                        <td class="tablecolumns"><input class="tableinput" placeholder="로그인한 사용자의 주소 자동 입력되었음"></td>
									</tr>

                                    <tr class="#">
                                        <td class="td">연락처</td>
                                        <td class="tablecolumns"><input class="tableinput" placeholder="로그인한 사용자의 연락처 자동 입력되었음"></td>
									</tr>
									
                                </table>
                            </div>
                            <div class="lin"> </div>
                        </div>
                    </div>
                </div>
                <%@ include file="Footer.jsp" %>
                    <nav id="loginMD">
                        <div id="mdBg">
                            <div id="mdBox">
                                <div><button id="closeBtn">X</button></div>
                                <div class="loginBoxLogo">
                                    <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                                </div>
                                <form action="LoginController" method="post">
                                    <div class="loginBox">
                                        <div class="loginBoxRow">
                                            <div class="loginBoxIdPw">
                                                ID
                                            </div>
                                            <div class="loginBoxInput">
                                                <input type="text" name="id" placeholder="아이디를 입력해주세요.">
                                            </div>
                                        </div>
                                        <div class="loginBoxRow">
                                            <div class="loginBoxIdPw">
                                                PW
                                            </div>
                                            <div class="loginBoxInput">
                                                <input type="password" name="pw" placeholder="비밀번호를 입력해주세요.">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="loginBtn">
                                        <span>
                                            <a href="Login.html">
                                                <button type="submit" class="AllBtn">Login </button>
                                            </a>
                                        </span>
                                    </div>
                                </form>

                                <div id="JoinIdPwButtonBox">
                                    <span>
                                        <a href="Join.jsp"><button>회원가입</button></a> |
                                        <a href="IdFind.html"><button>아이디 찾기</button></a> |
                                        <a href="PwFind.html"><button>비밀번호 찾기</button></a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </nav>

                    <script>
                        const mdOpen = () => {
                            document.getElementById("loginMD").style.display = "block";
                        }
                        const mdClose = () => {
                            document.getElementById("loginMD").style.display = "none";
                        }
                        document.getElementById("headLoginBtn").addEventListener("click", mdOpen);
                        document.getElementById("closeBtn").addEventListener("click", mdClose);
                    </script>


<<<<<<< HEAD
                    git pull origin master
=======

   
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-IS-CLOUD-4/OSpace
