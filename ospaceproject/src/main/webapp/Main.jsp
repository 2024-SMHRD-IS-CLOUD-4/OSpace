<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
	로그인 성공
	<%  User user = (User)session.getAttribute("user"); 
		String name = user.getName();
		String u_type = user.getU_type();
	%>
	
	<a href="MyPage.jsp">마이페이지</a>
</body>
</html>