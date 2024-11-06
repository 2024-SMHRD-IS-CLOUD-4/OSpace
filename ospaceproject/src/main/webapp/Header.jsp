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
    <script>
        const mdOpen=()=>{
            document.getElementById("loginMD").style.display="block";
        }
        document.getElementById("headLoginBtn").addEventListener("click",mdOpen)
    </script>
</body>
</html>

git fetch origin master

