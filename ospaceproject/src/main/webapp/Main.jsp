<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>O'Space</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
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
                <a href="Main.html">
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
                        <a href="http://localhost:8081/ospaceproject2/ItemSearch.jsp?title=category">카테고리</a>
                    </li>
                    <li>
                        <a href="http://localhost:8081/ospaceproject2/ItemSearch.jsp?asdf=1231">리뷰보기</a>
                    </li>
                    <li>
                        <a href="http://localhost:8081/ospaceproject2/ItemSearch.jsp">중고거래</a>
                    </li>
                </ul>
            </div>
            <div id="login">
            	<%if(session.getAttribute("user")==null){%>
                <span><a href="Login.html">로그인</a></span>
            	<%}else{ %>
            		<span><a href="MyPage.jsp">마이페이지</a></span>
            		<span><a href="LogoutController">로그아웃</a></span>
            	<%}%>
                <span><a href="#">고객센터</a></span>
            </div>
        </div>
    </header>
    <div id="body">
        <div id="mainBanner">
            <div id="btnRight"><img src="image/btnRight.png"></div>
            <div id="btnLeft"><img src="image/btnLeft.png"></div>
            <div id="btnChangePage"></div>
        </div>
        <div id="mainCategory">
            <div id="mainCategoryCon">
                <ul>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div id="mainItem01">
            <div class="itemTitle">
                <h5 class="subItemTitle">new</h5>
                <h1 calss="mainItemTitle">최다 별점!</h1>
            </div>
            <div class="itemBox">
                <ul>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div id="mainItem02">
            <div class="itemTitle">
                <h5 class="subItemTitle">중고거래</h5>
                <h1 calss="mainItemTitle">HOT! 조회수</h1>
            </div>
            <div class="itemBox">
                <ul>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID">판매자ID</p>
                                    <p class="itemName">상품명</p>
                                    <p class="itemPrice">50,000</p>
                                </div>
                            </a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <footer id="footer">
        <div>
            <a href="#">고객센터 문의글작성하기</a>
        </div>
    </footer>
</body>

</html>