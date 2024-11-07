<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>회원가입 실패 페이지</title>
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
</head>

<body>
	<%@ include file = "Header.jsp" %>
    <!-- 전체 div -->
    <div id=body>
    <div id="joinFailBg">
        <div id="joinFail">
            <div><button class="closeBtn">X</button></div>
            <!-- 가입실패 틀 -->
            <div class="joinFailText">
                <h2> 회원가입에 <br> 실패하셨습니다 </h2>

                <p> 
                    작성하지 않은 내용이 있거나 <br> 
                    올바르지 않는 내용이 있을 경우 <br>
                    회원가입이 어렵습니다.
                </p>
            </div>
            <div class="joinFailBtn">
                <!-- 다시 작성하기 / 홈으로 돌아가기 버튼 -->
                <span>
                    <button>다시 작성하기 </button>
                    <a href="Main.html">
                        <button>홈으로 돌아가기</button>
                    </a>
                </span>
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
</body>

</html>