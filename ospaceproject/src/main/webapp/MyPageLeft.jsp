<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O'Space</title>
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>

<body>
	<div id="myPageLeft">
		<div class="myPageLeftUser">
			<h2 class="seller">판매자회원</h2>
			<h2 class="member">일반회원</h2>
			<h2 class="manager">관리자</h2>
		</div>
		<div class="myPageLeftNav">
                    <ul>
                        <li class="seller">
                            상품관리
                                <p class="subNav">상품리스트보기</p>
                                <p class="subNav"><a href="Mypage_ProductAdd.jsp">상품등록하기</a></p>
                        </li>
                        <li class="seller">주문관리</li>
                        <li class="seller"><a href="Mypage_MemberModify.jsp">회원정보수정</a></li>
                        <li class="member"><a href="Mypage_MemberModify.jsp">회원정보수정</a></li>
                        <li class="member">
                        	리뷰
                        	<p class="subNav"><a href="Mypage_reviewsList.jsp">내가 쓴 리뷰 보기</a></p>
                        	<p class="subNav"><a href="Mypage_reviews.jsp">리뷰등록하기</a></p>
                        </li>
                        <li class="member">
                        	<a href="Mypage_Reserved.jsp">찜 목록</a>
                        </li>
                        <li class="member">
                            중고거래
                                <p class="subNav"><a href="#">중고상품 리스트보기</a></p>
                                <p class="subNav"><a href="Mypage_UsedProductAdd.jsp">중고상품등록하기</a></p>
                        </li>
                        <li class="member">장바구니</li>
                        <li class="member">주문내역</li>
                        <li class="manager">카테고리관리</li>
                        <li class="manager">신고관리</li>
                    </ul>
                </div>
    
	</div>
	<%
		User user1= (User)session.getAttribute("user");
	%>
	<script>
    	let userType = "<%=user1.getU_type()%>";
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