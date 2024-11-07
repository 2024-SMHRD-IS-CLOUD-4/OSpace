<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Reviews"%>
<%@ page import="com.smhrd.model.ReviewsDAO"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp"%>
		<%
        ReviewsDAO dao = new ReviewsDAO();
        List<Reviews> ReviewstList = dao.getreview();
    %>
	
	<h2>리뷰 리스트</h2>
    <table border="1">
        <tr>
            <th>상품 이미지</th>
            <th>사용자 아이디</th>
            <th>상품 아이디</th>
            <th>리뷰 제목</th>
            <th>리뷰 내용</th>
            <th>별점</th>
            <th>태그</th>
        </tr>
        <%
        	for(Reviews review : ReviewstList){
        %>
            <tr>
            	<td><img src="<%=request.getContextPath()%>/used/<%=review.getReview_img()%>" alt="상품 이미지" width="100"></td>
                <td><%= review.getId() %></td>
                <td><%= review.getProd_id() %></td>
                <td><%= review.getReview_title() %></td>
                <td><%= review.getReview_content() %></td>
                <td><%= review.getRatings() %></td>
                <td><%= review.getReview_tag() %></td>
            </tr>
		<%
        	}
		%>
    </table>

</body>
</html>