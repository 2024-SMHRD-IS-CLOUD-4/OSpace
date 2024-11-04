<%@page import="com.smhrd.model.ReportDAO"%>
<%@ page import="java.util.List" %>
<%@ page import="com.smhrd.model.Reports" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
        ReportDAO dao = new ReportDAO();
        List<Reports> reportList = dao.getAllReports();
        System.out.print(reportList.get(1).getR_title());
    %>
	<h2>신고 리스트</h2>
    <table border="1">
        <tr>
            <th>상품명</th>
            <th>신고 제목</th>
            <th>작성일</th>
            <th>처리 상태</th>
        </tr>
        <%
        	for(Reports report : reportList){
        %>
            <tr>
                <td><%= report.getProd_id() %></td>
                <td><%= report.getR_title() %></td>
                <td><%= report.getCreated_at() %></td>
                <td><%= report.getR_status() %></td>
            </tr>
		<%
        	}
		%>
    </table>
    
</body>
</html>