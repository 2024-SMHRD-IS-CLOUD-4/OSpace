<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.smhrd.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
</head>
<body>
<%
	request.getSession(false);
	if(session.getAttribute("user")!=null){
		User user = (User)request.getAttribute("user");
		String userName = user.getName();
		String userType = user.getU_type();
	}else{
		
	};
%>
	<header id="header">
		<div id="logo">
			<div>
				<a href="Main.jsp">
					<img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
					O'Space
				</a>
			</div>
		</div>
		<div id="serch">
			<buttion type="buttion" class="serch">
			<img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
				|
				<div>검색하기</div>
			</buttion>
		</div>
		<div id="con">
			<div id="nav">
				<ul>
					<li>
                        <a href="ItemSearchCartegory.jsp">카테고리</a>
                    </li>
					<li>
						<a href="ItemSearchReview.jsp">리뷰보기</a>
					</li>
					<li>
						<a href="ItemSearchUsedItem.jsp">중고거래</a>
					</li>
				</ul>
            </div>
            <div id="login">
            	<%if(session.getAttribute("user")==null){%>
                <button type="button" id="headLoginBtn">로그인</button>
            	<%}else{ %>
            		<span><a href="MyPage.jsp">마이페이지</a></span>
            		<span><a href="LogoutController">로그아웃</a></span>
            	<%}%>
                <span><a href="#">고객센터</a></span>
            </div>
        </div>
    </header>
    
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
        const mdOpen=()=>{
            document.getElementById("loginMD").style.display="block";
        }
        const mdClose=()=>{
            document.getElementById("loginMD").style.display="none";
        }
        document.getElementById("headLoginBtn").addEventListener("click",mdOpen)
        document.getElementById("closeBtn").addEventListener("click",mdClose)
    </script>
</body>
</html>