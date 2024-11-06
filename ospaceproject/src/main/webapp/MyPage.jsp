<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assects/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assects/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assects/css/MyPage.css" type="text/css" />
</head>
<body>
<%@ include file = "Header.jsp" %>
	<div id="body">
        <div id="headerNavBar">
            O'Space
        </div>
        <div id="MyPageBox">
            <div id="myPageLeft">
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
            </div>
            <div id="myPageRight">
            	<% if(user!=null){%>
                <h1>
                	<span class="seller">판매자회원</span>
                    <span class="member">일반회원</span>
                    <span class="manager">관리자</span>
                	<%=userName%> 님 반갑습니다!<%}%>
                </h1>
                
                <div class="line"></div>
                <div id="myPageRightContents">
                    <div class="contentsLeft">
                        <!-- 리뷰 모음(일반회원) / 상품순위(판매자) 확인 구역 -->
                        <div class="seller">
                            <h4>내상품 찜 순위</h4>
                            <ul>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="member">
                            <h4>내 리뷰 보기</h4>
                            <ul>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="manager">
                            <h4>카테고리 등록 순위</h4>
                            <ul>
                                <li class="ContentsBox">
                                    <span class="ContentsRank">1</span>
                                    <div class="ContentsImg">
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>카테고리명</p>
                                        <p class="ContentsTextLeft">00개</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <span class="ContentsRank">2</span>
                                    <div class="ContentsImg">
                                        
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>카테고리명</p>
                                        <p class="ContentsTextLeft">00개</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <span class="ContentsRank">3</span>
                                    <div class="ContentsImg">
                                        
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>카테고리명</p>
                                        <p class="ContentsTextLeft">00개</p>
                                    </div>
                                </li>
                                <li class="ContentsBox">
                                    <span class="ContentsRank">4</span>
                                    <div class="ContentsImg">
                                        
                                        <img src="image/camera_icon.png">
                                    </div>
                                    <div class="ContentsText">
                                        <p>카테고리명</p>
                                        <p class="ContentsTextLeft">00개</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <!-- 주문 내역 확인 구역 상품 이미지, 등록일자, 상품명, 색상, 개수, 가격, 주문 상태-->
                    <div class="contentsRight">
                        <div class="seller">
                            <h4>새 주문내역</h4>
                            <span>상세보기 > </span>
                            <ul>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="member">
                            <h4>주문내역</h4>
                            <span>상세보기 > </span>
                            <ul>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listImgBox">
                                        <img src="">
                                    </div>
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">상품명상품명상품명</p>
                                        <div class="listTextBoxItemOption">옵션 : <div class="listTextBoxItemOptionColor"></div> 빨간색</div>
                                        <div class="ItemOptionDetails">
                                            <p>1개</p>
                                            <p>50,000원</p>
                                        </div>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderGreen">주문</p>
                                        <p class="orderRed">발송</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="manager">
                            <h4>새 신고내역</h4>
                            <span>상세보기 > </span>
                            <ul>
                                <li class="contentsRightList">
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">제목</p>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderRed">신고</p>
                                        <p class="orderGreen">해결</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">제목</p>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderRed">신고</p>
                                        <p class="orderGreen">해결</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">제목</p>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderRed">신고</p>
                                        <p class="orderGreen">해결</p>
                                    </div>
                                </li>
                                <li class="contentsRightList">
                                    <div class="listTextBox">
                                        <p class="listTextBoxDate">2024-10-29</p>
                                        <p class="listTextBoxItemName">제목</p>
                                    </div>
                                    <div class="listOrderCheck">
                                        <p class="orderRed">신고</p>
                                        <p class="orderGreen">해결</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%@ include file = "Footer.jsp" %>	
<nav id="loginMD">
        <div id="mdBg">
            <div id="mdBox">
                <div><button id="closeBtn">X</button></div>
                <div class="loginBoxLogo">
                    <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                </div>
                <form action="LoginController" method="post">
                    <div class="loginBox">
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                ID
                            </div>
                            <div class="loginBoxInput">
                                <input type="text" name="id" placeholder="아이디를 입력해주세요.">
                            </div>
                        </div>
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                PW
                            </div>
                            <div class="loginBoxInput">
                                <input type="password" name="pw" placeholder="비밀번호를 입력해주세요.">
                            </div>
                        </div>
                    </div>
                    <div class="loginBtn">
                        <span>
                            <a href="Login.html">
                                <button type="submit" class="AllBtn">Login </button>
                            </a>
                        </span>
                    </div>
                </form>

                <div id="JoinIdPwButtonBox">
                    <span>
                        <a href="Join.jsp"><button>회원가입</button></a> |
                        <a href="IdFind.html"><button>아이디 찾기</button></a> |
                        <a href="PwFind.html"><button>비밀번호 찾기</button></a>
                    </span>
                </div>
            </div>
        </div>
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