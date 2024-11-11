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
	                        <h1>상품을 찜했어요!</h1>
	                        <p>계속 쇼핑하시겠습니까?<br>찜목록으로 이동하시겠습니까?</p>
	                    </div>
	                    <div class="loginBtn">
	                        <span>
	                            <a href="Mypage_Reserved.jsp">
	                                <button type="button" class="AllBtn">찜목록가기</button>
	                            </a>
	                        </span>
	                        <span>
	                                <button type="button" class="AllBtn" id="mdReservedClose">계속 쇼핑하기</button>
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
        const reservedOpen = () => {
            document.getElementById("reservedMD").style.display = "block";
            document.body.style.overflow = 'hidden';
            
        }
       	const reservedClose = () => {
       		document.getElementById("reservedMD").style.display = "none";
       		document.body.style.removeProperty('overflow');
       	}
       	if(user_true==='null'){
        	document.getElementById("headLoginBtn").addEventListener("click", basketOpen);
        }
       	document.getElementById("checkBox").addEventListener("click", reservedOpen);
        document.getElementById("closeBtn").addEventListener("click", reservedClose);
        document.getElementById("mdReservedClose").addEventListener("click", reservedClose);
    </script>
</body>
</html> 