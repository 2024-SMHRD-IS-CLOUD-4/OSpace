<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
</head>
<body>
    <%@ include file = "Header.jsp" %>
	<div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img src="#">
                </div>
                <div id="itemBoxTitle">
                    <h1>리뷰제목</h1>
                    <div class="itemBoxStar">
                        <span class="itemT">상품명</span>
                        <div class="itemC">
                            <p><span>chare-0001</span><span class="starCheck">★★★★★</span></p>
                            <p><span>chare-0001</span><span class="starCheck">★★★★★</span></p>
                        </div>
                    </div>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">작성자</span><span>작성자 ID</span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">등록일</span><span>2024-10-29</span>
                    </p>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <h1>리뷰내용</h1>
            </div>
        </div>
    </div>
    <%@ include file = "Footer.jsp" %>
    <nav id="loginMD">
        <%@ include file = "Login.jsp" %>
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
</body>
</html>