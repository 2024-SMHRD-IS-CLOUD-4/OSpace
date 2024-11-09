<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Boards"%>
<%@ page import="com.smhrd.model.BoardsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		BoardsDAO dao = new BoardsDAO();
		List<Boards> b_lst = dao.getAllBoard();
	%>
	
	<h2>게시글 리스트</h2>
	
	 <table border="1">
        <tr>
            <th>상품 이미지</th>
            <th>사용자 아이디</th>
            <th>게시글 제목</th>
            <th>게시글 내용</th>
            <th>조회수</th>
            <th>등록 날짜</th>
        </tr>
        <%
        	for(Boards board : b_lst){ // 변수명 수정
        %>
            <tr>
            	<td><img src="<%=request.getContextPath()%>/upload/<%=board.getB_file()%>" alt="상품 이미지" width="100"></td>
                <td><%= board.getId() %></td>
                <td><%= board.getB_title() %></td>
                <td><%= board.getB_content() %></td>
                <td><%= board.getB_views() %></td>
                <td><%= board.getCreated_at() %></td>
            </tr>
		<%
        	}
		%>
    </table>
	
</body>
</html>