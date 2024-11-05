<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assects/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assects/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assects/css/MyPage.css" type="text/css" />
</head>
<body>
<%
	request.getSession(false);
	User user = (User)request.getAttribute("user");
	String userName = "";
	String userType = "";
	if(user!=null){
		System.out.print("123");
		userName = user.getName();
		userType = user.getU_type();
	}else{
		
	}
%>
<%@ include file = "Header.jsp" %>
	<div id="body">
        <div id="headerNavBar">
            O'Space
        </div>
        <div id="MyPageBox">
            <div id="myPageLeft">
                <div class="myPageLeftUser">
                    <h2>판매자회원</h2>
                </div>
                <div class="myPageLeftNav">
                    <ul>
                        <li class="seller">등록상품관리</li>
                        <li class="member">주문관리</li>
                        <li class="member">회원정보수정</li>
                        <li class="member">리뷰</li>
                        <li class="member">중고거래</li>
                        <li class="member">장바구니</li>
                        <li class="member">주문내역</li>
                        <li class="manager">카테고리관리</li>
                        <li class="manager">신고관리</li>
                    </ul>
                </div>
            </div>
            <div id="myPageRight">
            	<% if(user!=null){%>
                <h1><%=userType%><br><%=userName%> 님 반갑습니다!</h1>
                <%}%>
                <div class="line"></div>
                <div id="myPageRightContents">
                    <div class="contentsLeft">
                        <!-- 리뷰 모음(일반회원) / 상품순위(판매자) 확인 구역 -->
                        <div class="seller">
                            <h4>내상품 찜 순위</h4>
                            <ul>
                                <li class="selleContents">
                                    <div class="selleContentsImg">
                                        <img src="">
                                    </div>
                                    <div class="selleContentsText">
                                        <p>00개</p>
                                        <p>상품명</p>
                                    </div>
                                </li>
                                <li class="selleContents"></li>
                                <li class="selleContents"></li>
                                <li class="selleContents"></li>
                            </ul>
                        </div>
                        <div class="member">
                            <ul>
                                <li class="memberContents"></li>
                                <li class="memberContents"></li>
                                <li class="memberContents"></li>
                                <li class="memberContents"></li>
                            </ul>
                        </div>
                        <div class="manager">
                            <ul>
                                <li class="managerContents"></li>
                                <li class="managerContents"></li>
                                <li class="managerContents"></li>
                                <li class="managerContents"></li>
                            </ul>
                        </div>
                    </div>

                    <!-- 주문 내역 확인 구역 상품 이미지, 등록일자, 상품명, 색상, 개수, 가격, 주문 상태-->
                    <div class="contentsRight">
                        <ul>
                            <li>
                                <h2>주문내역</h2>
                            </li>
                            <li class="order"></li>
                            <li class="order"></li>
                            <li class="order"></li>
                            <li class="order"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file = "Footer.jsp" %>	
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
        document.getElementById("headLoginBtn").addEventListener("click", mdOpen)
        document.getElementById("closeBtn").addEventListener("click", mdClose)

        const menuTop = document.getElementById("headerNavBar");

        window.addEventListener("scroll", function () {
            let scrollPosition = window.scrollY;

            if (scrollPosition >= 10) {
                menuTop.style.top = "0px";
            } else {
                menuTop.style.top = "-150px";
            }
        })


    </script>
</body>
</html>