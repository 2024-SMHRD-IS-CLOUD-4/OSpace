<%@page import="com.smhrd.model.Reviews"%>
<%@page import="com.smhrd.model.ReviewsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
</head>
<body>
    <%@ include file = "Header.jsp" %>
    <%
    	int review_id = Integer.parseInt(request.getParameter("review_id"));
    	ReviewsDAO r_dao = new ReviewsDAO();
    	Reviews r = r_dao.getMyProductReview(review_id);
    %>
	<div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img src="<%=request.getContextPath()%>/upload/<%=r.getReview_img()%>">
                </div>
                
                <div id="itemBoxTitle">
                    <h1><%=r.getReview_title() %></h1>
                    <div class="itemBoxStar">
                        <span class="itemT"><%=r.getReview_title() %></span>
                        <div class="itemC">
                            <p><span><%=r.getProd_id() %></span><span class="starCheck">★★★★★</span></p>
                        </div>
                    </div>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">작성자</span><span><%=r.getId() %></span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">등록일</span><span><%=r.getCreated_at() %></span>
                    </p>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <h1>리뷰내용</h1>
               <%= r.getReview_content() %>
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
</body>
</html>