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
    <div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img src="#">
                </div>
                <div id="itemBoxTitle">
                    <!--신고하기 클릭 시 로그인 하지 않았을 때는 로그인 창으로 넘어가기-->
                    <p class="itemBoxCartegory">신고하기</p>
                    <h1>상품명 블라블라</h1>
                    <p class="itemBoxTitlePrise">00,000원</p>
                    <div class="usedSubTitleBox">
                        <p class="itemBoxSubTitle">
                            <span class="itemT">상품번호</span><span>chare-0001</span>
                        </p>
                        <p class="itemBoxSubTitle">
                            <span class="itemT">판매자</span><span>chare-0001</span>
                        </p>
                        <p class="itemBoxSubTitle">
                            <span class="itemT">등록일</span><span>2024-10-01</span>
                        </p>
                        <p class="itemBoxSubTitle">
                            <span class="itemT">거래지역</span><span>서울특별시 중구 **동</span>
                        </p>
                    </div>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <h1>상세페이지</h1>
            </div>
            <div id="itemBoxComent">
                <h4>코멘트 남기기</h4>
                <ul>
                    <li>
                        <div class="ComentContents">
                            <div class="ComentContentsT">리뷰 내용 블라블라</div>
                            <div class="ComentContentsC">
                                <p><span>작성자 ID</span><span>2024-10-24</span></p>
                            </div>
                            <button>답글달기</button>
                        </div>
                        <div class="ComentContentsAnser">
                            <div class="ComentContentsT">답글달기 블라블라</div>
                            <div class="ComentContentsC">
                                <p><span>작성자 ID</span><span>2024-10-24</span></p>
                            </div>
                        </div>
                    </li>
                    <li>
                        <div class="ComentContents">
                            <div class="ComentContentsT">리뷰 내용 블라블라</div>
                            <div class="ComentContentsC">
                                <p><span>작성자 ID</span><span>2024-10-24</span></p>
                            </div>
                            <button>답글달기</button>
                        </div>
                        <div class="ComentContentsAnser">
                            <div class="ComentContentsT">답글달기 블라블라</div>
                            <div class="ComentContentsC">
                                <p><span>작성자 ID</span><span>2024-10-24</span></p>
                            </div>
                        </div>
                        <div class="ComentContentsAnser">
                            <div class="ComentContentsT">답글달기 블라블라</div>
                            <div class="ComentContentsC">
                                <p><span>작성자 ID</span><span>2024-10-24</span></p>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="itemBoxReviewPageNum">1 2 3 4 > </div>
            </div>
        </div>
    </div>
        <%@ include file = "Footer.jsp" %>
</body>
</html>