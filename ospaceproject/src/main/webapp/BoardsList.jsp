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
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
<link rel="stylesheet" href="assets/css/Board.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%
		BoardsDAO dao = new BoardsDAO();
		List<Boards> BoardsList = dao.getAllBoard();
	%>
	<div id="body">
        <div id="mainItem01">
            <div class="itemTitle">
                <h1 class="mainItemTitle">고객센터(게시글)</h1>
            </div>
            <div class="itemBox">
                <div id="boardBox">
                    <ul>
                        <li>
                            <p class="boardCheckbox"></p>
                            <p class="boardNum">no</p>
                            <p class="boardTitle">제목</p>
                            <p class="boardName">작성자</p>
                            <p class="boardDate">작성일</p>
                            <p class="boardView">조회</p>
                            <p class="boardContentArrow"></p>
                            <p class="boardContentA"></p>
                        </li>
                        <%
        					for(Boards board : BoardsList){ // 변수명 수정
        				%>
        				<li>
                            <p class="boardCheckbox"><input type="checkbox"></p>
                            <p class="boardNum"><%= board.getB_id() %></p>
                            <p class="boardTitle"><%= board.getB_title() %></p>
                            <p class="boardName"><%= board.getId() %></p>
                            <p class="boardDate"><%= board.getCreated_at() %></p>
                            <p class="boardView"><%= board.getB_views() %></p>
                            <p class="boardContentArrow">▽</p>
                            <p class="boardContent"><%= board.getB_content() %></p>
                        </li>
                        <%
				        	}
						%>
                    </ul>
                </div>
                <a href="Boardsform.jsp"><button type="button" class="AllBtn">게시글 작성하기</button></a>
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
	<%@ include file="HeaderSub.jsp"%>
</body>
</html>