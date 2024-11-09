<%@ page import="com.smhrd.model.Reviews"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.ReviewsDAO"%>
<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<%@ include file="Header.jsp"%>
	<div id="body">
        <div id="MyPageBox">
            <%@ include file="MyPageLeft.jsp"%>
            <div id="myPageRight">
                <h2>
                    중고상품등록하기
                </h2>
                <div id="myPageContainer">
                    <form action="UsedController" method="post" enctype="multipart/form-data">
                        <table class="productAdd">
                            <tr>
                                <th>중고상품 ID</th>
                                <td>중고상품 ID는 등록 완료 시 자동 부여됩니다.</td>
                            </tr>
                            <tr>
                                <th>판매자 ID</th>
                                <td>
                                    <%=userName%>
                                    <input type="hidden" name="id" value="<%=user.getId()%>">
                                    
                                </td>
                            </tr>
                            <tr>
                                <th>상품명</th>
                                <td>
                                    <input type="text" id="used_title" name="used_title" placeholder="상품명을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">대표이미지</th>
                                <td>
                                    <input type="file" id="used_img" name="used_img" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img src="#" alt="대표이미지">
                                </td>
                            </tr>
                            <tr>
                                <th>가격</th>
                                <td>
                                    <input type="text" id="used_price" name="used_price" placeholder="상품 가격을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="used_location" name="used_content" placeholder="상품 설명을 입력하세요."
                                        required></textarea>
                                </td>
                            </tr>
                            <tr>
                                <th>지역</th>
                                <td>
                                    <input type="text" id="used_location" name="used_location" placeholder="거래 지역을 입력해주세요.(ex. 광주광역시 동구 00동)"
                                        required>
                                </td>
                            </tr>
                        </table>
                <div class="buttonContainer">
                    <button class="AllBtn" type="submit">저장하기</button>
                </div>
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
	
</body>
</html>