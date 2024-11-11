<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O'Sapce</title>
</head>
<body>

	<form action="BoardController" method="post" enctype="multipart/form-data">
		아이디 <input type="text" name="id"><br>
		제목 <input type="text" name="b_title"><br>
		파일 <input type="file" name="b_file" ><br>
		내용 <textarea name="b_content"></textarea><br>
		<input type="submit" value="등록">
	</form>

</body>
</html>