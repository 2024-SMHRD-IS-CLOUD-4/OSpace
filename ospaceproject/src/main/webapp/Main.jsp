<%@page import="com.smhrd.model.Products"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>O'Space</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
    <%@ include file = "Header.jsp" %>
    <%
      ProductsDAO dao = new ProductsDAO();
      List<Products>lst = dao.orderByViews();
   %>
    <div id="body">
       <div id="headerNavBar">
            O'Space
       </div>
        <div id="mainBanner">
            <div id="btnRight"><img src="image/btnRight.png"></div>
            <div id="btnLeft"><img src="image/btnLeft.png"></div>
            <div id="btnChangePage"></div>
        </div>
        <div id="mainCategory">
            <div id="mainCategoryCon">
                <ul>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=의자">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>의자</p>
                        </a>
                    </li>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=책상">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>책상</p>
                        </a>
                    </li>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=침대">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>침대</p>
                        </a>
                    </li>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=수납장">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>수납장</p>
                        </a>
                    </li>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=커튼">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>커튼</p>
                        </a>
                    </li>
                    <li>
                        <a href="ItemSearch.jsp?title=카테고리&subTitle=벽지">
                            <div class="mainCategoryImg">
                                <img src="image/cartegoryImg.png">
                            </div>
                            <p>벽지</p>
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
                <%for(Products p :lst){ %>
                    <li>
                        <div class="itemSmallBox">
                            <a href="#">
                                <div class="itemSmallBoxImg">
                                    <img src="#">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID"><%=p.getId() %></p>
                                    <p class="itemName"><%=p.getProd_name() %></p>
                                    <p class="itemPrice"><%=p.getProd_price() %></p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <%} %>
                </ul>
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