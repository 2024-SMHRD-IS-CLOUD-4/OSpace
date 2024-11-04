<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="UsedController" method="post" enctype="multipart/form-data">
    판매자 아이디 <input type="text" name="id"><br>
    상품명 <input type="text" name="used_title"><br>
    가격 <input type="text" name="used_price"><br>
    내용 <textarea name="used_content"></textarea><br>
    지역 <input type="text" name="used_location"><br>
    이미지1 <input type="file" name="used_img"><br>
    <input type="submit" value="저장하기">
</form>
	
</body>
</html>