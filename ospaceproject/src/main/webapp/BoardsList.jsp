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
                    <table>
                        <tr>
                            <th class="boardCheckbox"></th>
                            <th class="boardNum">no</th>
                            <th class="boardTitle">제목</th>
                            <th class="boardName">작성자</th>
                            <th class="boardDate">작성일</th>
                            <th class="boardView">조회</th>
                            <th class="boardContentArrow"></th>
                        </tr>
                        <%
        					for(Boards board : BoardsList){ // 변수명 수정
        				%>
                        <tr>
                            <td class="boardCheckbox"><input type="checkbox"></td>
                            <td class="boardNum"><%= board.getB_id() %></td>
                            <td class="boardTitle"><%= board.getB_title() %></td>
                            <td class="boardName"><%= board.getId() %></td>
                            <td class="boardDate"><%= board.getCreated_at() %></td>
                            <td class="boardView"><%= board.getB_views() %></td>
                            <td class="boardContentArrow">▽</td>
                        </tr>
                        <tr>
                            <td colspan="7" class="boardContent"><%= board.getB_content() %></td>
                        </tr>
                        <%
				        	}
						%>
                    </table>
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
	<script>
		const clickOpen = () =>{
			document.
		}
	</script>
</body>
</html>