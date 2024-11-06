<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O'Space</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
</head>
<body>
	<% 
//	String categoryName = session.getAttribute(name); 
	String categoryName = "가구";
//	String userName = session.getAttribute(name);
	String userName = "asd";
	
	%>
<script type="text/javascript">
	const urlParams = new URLSearchParams(window.location.search);
	const title = urlParams.get('title');
	console.log(title);
</script>
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
            <button type="button" class="serch">
                <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                |
                <div>검색하기</div>
            </button>
        </div>
        <div id="con">
            <div id="nav">
                <ul>
                    <li>
                        <a href="ItemResult.html">카테고리</a>
                    </li>
                    <li>
                        <a href="ItemResult.html">리뷰보기</a>
                    </li>
                    <li>
                        <a href="ItemResult.html">중고거래</a>
                    </li>
                </ul>
            </div>
            <div id="login">
                <span>로그인</span>
                <span><a href="#">고객센터</a></span>
            </div>
        </div>
    </header>
    <div id="body">
    <%
//    	String title = session.getAttribute(title);
    		String title = "카테고리";
// 		String subTitle = session.getAttribute(subTitle);
    		String subTitle = "의자";
    		String Color = "";
    %>
        <!--리뷰를 클릭하면 리뷰가 나오게, 
        카테고리를 클릭하면 첫 카테고리가 나오게, 
        중고거래를 클릭하면 중고거래가 나오게-->
        <div id="mainItem01">
            <div class="itemTitle">
                <h1 class="mainItemTitle"><%= title+">"+subTitle %> </h1>             </div>
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