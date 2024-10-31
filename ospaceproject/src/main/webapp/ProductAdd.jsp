<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    
	<h1>상품 등록하기</h1>
    <form action="ProdaddController" method="post" enctype="multipart/form-data">
        <div>
            <label for="id">판매자 ID:</label>
            <input type="text" id="id" name="id" placeholder="판매자 ID를 입력하세요." required>
        </div>
        <div>
            <label for="category_id">카테고리:</label>
            <select id="category_id" name="category_id" required>
                <option value="">카테고리를 선택하세요</option>
                <option value="1">카테고리 1</option>
                <option value="2">카테고리 2</option>
                <!-- 추가 카테고리 옵션 필요 시 여기에 추가 -->
            </select>
        </div>
        <div>
            <label for="prod_name">상품명:</label>
            <input type="text" id="prod_name" name="prod_name" placeholder="상품명을 입력하세요." required>
        </div>
        <div>
            <label for="prod_img">대표 이미지:</label>
            <input type="file" id="prod_img" name="prod_img" required>
        </div>
        <div>
            <label for="prod_price">가격:</label>
            <input type="text" id="prod_price" name="prod_price" placeholder="상품 가격을 입력하세요." required>
        </div>
        <div>
            <label for="prod_color">색상:</label>
            <input type="text" id="prod_color" name="prod_color" placeholder="색상 옵션을 입력하세요. (예: Red, Blue)" required>
        </div>
        <div>
            <label for="prod_op">옵션:</label>
            <input type="text" id="prod_op" name="prod_op" placeholder="옵션을 입력하세요.)" required>
        </div>
        <div>
            <label for="prod_desc">내용:</label>
            <textarea id="prod_desc" name="prod_desc" placeholder="상품 설명을 입력하세요." required></textarea>
        </div>
        <input type="submit" value="동록">
    </form>
	
</body>
</html>