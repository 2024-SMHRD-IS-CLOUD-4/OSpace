<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>

            <div id="mdBox">
                <div><button id="closeBtn">X</button></div>
                <div class="">
	                <form action="LoginController" method="post" id="form1">
	                    <div class="loginBoxFaleText">
	                        <h1>장바구니에<br>상품을 담았습니다.</h1>
	                        <p>계속 쇼핑하시겠습니까?<br>장바구니로 이동하시겠습니까?</p>
	                    </div>
	                    <div class="loginBtn">
	                        <span>
	                            <a href="Mypage_Basket.jsp">
	                                <button type="button" class="AllBtn">장바구니가기</button>
	                            </a>
	                        </span>
	                        <span>
	                                <button type="button" class="AllBtn" id="mdBasketClose">계속 쇼핑하기</button>
	                        </span>
	                    </div>
	                </form>
                </div>
        </div>
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script>
        const basketOpen = () => {
            document.getElementById("basketMD").style.display = "block";
            document.body.style.overflow = 'hidden';
            
        }
       	const basketClose = () => {
       		document.getElementById("basketMD").style.display = "none";
       		document.body.style.removeProperty('overflow');
       	}
       	if(user_true==='null'){
        	document.getElementById("headLoginBtn").addEventListener("click", basketOpen);
        }
       	document.getElementById("submit").addEventListener("click", basketOpen);
        document.getElementById("closeBtn").addEventListener("click", basketClose);
        document.getElementById("mdBasketClose").addEventListener("click", basketClose);
    </script>
</body>
</html> 