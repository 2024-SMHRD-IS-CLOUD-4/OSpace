<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Used_Products"%>
<%@ page import="com.smhrd.model.Used_ProductsDAO"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O'Space</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
</head>

<body>
    <%@ include file = "Header.jsp" %>
    <%
		int prod_id = Integer.parseInt(request.getParameter("prod_id"));  
		Used_ProductsDAO dao = new Used_ProductsDAO();
		dao.getu_single_prod(prod_id);
		Used_Products p = dao.getu_single_prod(prod_id);
		
	%>
    <div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img src="<%=request.getContextPath()%>/used/<%=p.getUsed_img()%>" alt="상품 이미지">
                </div>
                <div id="itemBoxTitle">
                    <!--신고하기 클릭 시 로그인 하지 않았을 때는 로그인 창으로 넘어가기-->
                    <p class="itemBoxCartegory">신고하기</p>
                    <h1><%=p.getUsed_title()%></h1>
                    <p class="itemBoxTitlePrise"><%=p.getUsed_price()%> 원</p>
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
                            <span class="itemT">거래지역</span><span><%=p.getUsed_location()%></span>
                        </p>
                    </div>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <%=p.getUsed_content()%>
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
	<nav id="loginMD">
		<%@ include file="MdLogin.jsp"%>
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