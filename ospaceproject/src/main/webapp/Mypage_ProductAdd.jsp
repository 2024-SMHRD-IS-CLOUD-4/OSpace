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
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp"%>
	<div id="body">
        <div id="MyPageBox">
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
            <div id="myPageRight">
                <h2>
                    상품등록하기
                </h2>
                <div id="myPageContainer">
                    <form action="ProdaddController" method="post" enctype="multipart/form-data">
                        <table class="productAdd">
                            <tr>
                                <th>상품 ID</th>
                                <td>상품 ID는 등록 완료 시 자동 부여됩니다.</td>
                            </tr>
                            <tr>
                                <th>판매자</th>
                                <td>
                                    <%=userName%>
                                </td>
                            </tr>
                            <tr>
                                <th>카테고리</th>
                                <td><select id="category_id" name="category_id" required>
                                        <option value="">카테고리를 선택하세요</option>
                                        <option value="1">카테고리 1</option>
                                        <option value="2">카테고리 2</option>
                                        <!-- 추가 카테고리 옵션 필요 시 여기에 추가 -->
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th>상품명</th>
                                <td>
                                    <input type="text" id="prod_name" name="prod_name" placeholder="상품명을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">대표이미지</th>
                                <td>
                                    <input type="file" id="prod_img" name="prod_img" required>
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
                                    <input type="text" id="prod_price" name="prod_price" placeholder="상품 가격을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">사이즈옵션</th>
                                <td>
                                    <select name="prod_op" id="prod_op">
                                        <option name="s"> S</option>
                                        <option name="m"> M</option>
                                        <option name="l"> L</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">색상옵션</th>
                                <td>
                                    <select name="prod_color" id="prod_color">
                                        <option name="Red">빨간색</option>
                                        <option name="lite-woody">밝은 우디</option>
                                        <option name="yellow">노란색</option>
                                        <option name="black">검은색</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="prod_desc" name="prod_desc" placeholder="상품 설명을 입력하세요."required></textarea>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="buttonContainer">
                    <button class="AllBtn" type="submit">등록하기</button>
                    <a href="#">
                        <button class="AllBtn" type="submit">상품리스트보기</button>
                    </a>
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
	<%
		String u_type = user.getU_type();
	%>
	<script>
    	let userType = "<%=userType%>";
    	const sellers = document.getElementsByClassName("seller");
    	const members = document.getElementsByClassName("member");
    	const managers = document.getElementsByClassName("manager");
    	if(userType==="일반회원"){
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="none"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="block"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="none"
    		}
    	}else if(userType==="판매자회원"){
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="block"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="none"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="none"
    		}
    	}else{
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="none"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="none"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="block"
    		}
    	}
    </script>
</body>
</html>