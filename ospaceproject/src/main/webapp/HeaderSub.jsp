<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav id="SubCategory">
        <div class="SubCategoryBox">
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=의자">의자</a></span>
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=책상">책상</a></span>
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=침대">침대</a></span>
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=수납장">수납장</a></span>
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=커튼">커튼</a></span>
            <span><a href="ItemSearch.jsp?title=카테고리&subTitle=벽지">벽지</a></span>
        </div>
    </nav>
    <script>
        const SubCategoryOpen=()=>{
            document.getElementById("SubCategory").style.height="50px";
        }
        const SubCategoryClose=()=>{
            document.getElementById("SubCategory").style.height="0px";
        }
        
        document.getElementById("HeaderCartegory").addEventListener("mouseover",SubCategoryOpen);
        document.getElementById("SubCategory").addEventListener("mouseover",SubCategoryOpen);
        document.getElementById("SubCategory").addEventListener("mouseout",SubCategoryClose);
    </script>
</body>
</html>