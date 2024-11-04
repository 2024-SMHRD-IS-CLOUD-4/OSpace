<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assects/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assects/css/ItemPage.css" type="text/css" />
</head>

<body>
    <%@ include file = "Header.jsp" %>
    <div id="body">
        <div class="itemBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img src="#">
                </div>
                <div id="itemBoxTitle">
                    <p class="itemBoxCartegory">카테고리 > 의자</p>
                    <h1>상품명 블라블라</h1>
                    <p class="itemBoxTitlePrise">00,000원</p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">상품번호</span><span>chare-0001</span>
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
                                    옵션 : 빨간색 <span><input type="text">개</span>
                                </li>
                                <li>
                                    옵션 : 노란색 <span><input type="text">개</span>
                                </li>
                                <li>
                                    옵션 : 노란색 <span><input type="text">개</span>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div id="priceBox">
                        총 금액<span>00,000원</span>
                    </div>
                    <div id="priceBoxSelect">
                        <button>장바구니 담기</button>
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
                        <img src="#">
                        <p><span>#상품명1</span><span>#상품명2</span><span>#상품명3</span></p>
                        <div>리뷰 내용 블라블라</div>
                        <div>
                            <p>작성자 ID</p>
                            <p>2024-10-24</p>
                        </div>
                    </li>
                </ul>
                <div>1 2 3 4 ></div>
            </div>
        </div>
    </div>
        <%@ include file = "Footer.jsp" %>
</body>
</html>