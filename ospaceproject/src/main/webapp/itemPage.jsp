<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
</head>

<body>
    <%@ include file = "Header.jsp" %>
    <% 
	int prod_id = Integer.parseInt(request.getParameter("prod_id"));  
	ProductsDAO dao = new ProductsDAO();
	dao.incrementViews(prod_id);
	Products p = dao.getSingleProduct(prod_id);
 %>
    <div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img id="img" src="<%= request.getContextPath() %>/upload/<%= p.getProd_img() %>">
                </div>
                <div id="itemBoxTitle">
                    <p class="itemBoxCartegory">카테고리 > 의자</p>
                    <h1 id="prod_name" ><%= p.getProd_name()%></h1>
                    <p id="prod_price" class="itemBoxTitlePrise">원</p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT"><%=p.getProd_id()%></span><span>chare-0001</span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">판매자</span><span>chare-0001</span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">옵션선택</span>
                        <select>
                            <option>색상을 선택해주세요.</option>
                            <option>검은색</option>
                            <option>빨간색</option>
                        </select>
                    </p>
                </div>
            </div>
            <div id="itemBoxPrice">
                <div class="itemBoxPrice">
                    <div id="optionBox">
                        <span>선택상품</span>
                        <div id="optionBoxScroll">
                            <ul>
                                <li>
                                    옵션 : 빨간색 <span><input type="text" value="1">개</span>
                                </li>
                                <li>
                                    옵션 : 노란색 <span><input type="text" value="1">개</span>
                                </li>
                                <li>
                                    옵션 : 노란색 <span><input type="text" value="1">개</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="priceBox">
                        총 금액<span>00,000원</span>
                    </div>
                    <div id="priceBoxSelect">
                    	<form action="ReservedController" method="post">
                        	<button id="checkBox" name="prod_id" value="<%=p.getProd_id()%>"><div class="checkBox"></div>찜하기</button>
                        </form>
                        <form action="BasketController" method="post">
                        	<button>장바구니 담기</button>
                        </form>
                        <button>구매하기</button>
                    </div>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <h1>상세페이지</h1>
            </div>
            <div id="itemBoxReview">
                <h4>리뷰</h4>
                <ul>
                    <li>
                        <div class="itemBoxReviewleft">
                            <img src="#">
                        </div>
                        <div class="itemBoxReviewRight">
                            <p><span>#상품명1</span><span>#상품명2</span><span>#상품명3</span></p>
                            <div>리뷰 내용 블라블라</div>
                            <div class="itemBoxReviewRightR">
                                <p>작성자 ID</p>
                                <p>2024-10-24</p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="itemBoxReviewleft">
                            <img src="#">
                        </div>
                        <div class="itemBoxReviewRight">
                            <p><span>#상품명1</span><span>#상품명2</span><span>#상품명3</span></p>
                            <div>리뷰 내용 블라블라</div>
                            <div class="itemBoxReviewRightR">
                                <p>작성자 ID</p>
                                <p>2024-10-24</p>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="itemBoxReviewPageNum">1   2  3   4   > </div>
            </div>
        </div>
    </div>
        <%@ include file = "Footer.jsp" %>
</body>
</html>