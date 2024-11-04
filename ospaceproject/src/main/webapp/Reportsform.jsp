<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="ReportController" method="post">
	
		상품id <input type="text" name="prod_id"><br>
		사용자id <input type="text" name="id"><br>
		신고 제목 <input type="text" name="r_title"><br>
		신고 내용 <input type="text" name="r_content"><br>
		<input type="submit" value="등록">
	
	</form>

</body>
</html>