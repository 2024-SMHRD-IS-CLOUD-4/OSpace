<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="ReviewController" method="post" enctype="multipart/form-data">
		아이디 <input type="text" name="id"><br>
		상품 번호 <input type="text" name="prod_id"><br>
		리뷰 제목 <input type="text" name="review_title"><br>
		리뷰 내용 <textarea name="review_content"></textarea><br>
		리뷰 이미지<input type="file" name="review_img"><br>
		별점 <input type="text" name="ratings"><br>
		리뷰 태그 <input type="text" name="review_tag"><br>
		<input type="submit" value="등록">
		
	</form>

</body>
</html>