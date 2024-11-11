<%@page import="com.smhrd.model.Category"%>
<%@page import="com.smhrd.model.CategoryDAO"%>
<%@ page import="com.smhrd.model.Reviews"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.ReviewsDAO"%>
<%@ page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp"%>
	 <% 
            	CategoryDAO cat_dao = new CategoryDAO();
            	List<Category>cats = cat_dao.getAllCategory();
            %>
	<div id="body">
        <div id="MyPageBox">
            <%@ include file="MyPageLeft.jsp"%>
            <div id="myPageRight">
            <% if(user.getU_type().equals("일반회원")){ %>
                <h2>중고상품등록하기</h2>
                <form action="UsedController" method="post">
            <%}else if(user.getU_type().equals("판매자회원")){ %>
            	<h2>상품등록하기</h2>
            	<form action="ProdaddController" method="post">
            <%} %>
                <div id="myPageContainer">
                        <table class="productAdd">
                            <tr>
                            <% if(user.getU_type().equals("일반회원")){ %>
                                <th>중고상품 ID</th>
                                <td>중고상품 ID는 등록 완료 시 자동 부여됩니다.</td>
         					<%}else if(user.getU_type().equals("판매자회원")){ %>
                                <th>상품 ID</th>
                                <td>상품 ID는 등록 완료 시 자동 부여됩니다.</td>
            				<%} %>
                            </tr>
                            <tr>
                                <th>판매자 ID</th>
                                <td>
                                    <%=userName%>
                                    <input type="hidden" name="id" value="<%=user.getId()%>">
                                    
                                </td>
                            </tr>
                            <tr>
                                <th>상품명</th>
                                <td>
                                    <input type="text" id="used_title" name="used_title" placeholder="상품명을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">대표이미지</th>
                                <td>
                                    <input type="file" id="used_img" name="used_img" required>
                                </td>
                            </tr>
                            <tr>
                                <td Id="usedProductImg">
                                    <img src="<%=request.getContextPath()%>/upload/" alt="대표이미지" id="present_img">
                                </td>
                            </tr>
                            <tr>
                                <th>가격</th>
                                <td>
                                    <input type="text" id="used_price" name="used_price" placeholder="상품 가격을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <%if(user.getU_type().equals("판매자회원")){ %>
                            <tr>
                                <th>카테고리</th>
                                <td><select id="category_id" name="category_id" required>
                                        <option value="">카테고리를 선택하세요</option>
                                <% for(Category cat : cats) {%>
                                        <option value="<%=cat.getCategory_id()%>"><%=cat.getCategory_name() %></option>
                                <%} %>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">색상옵션</th>
                                <td>
                                    <select name="prod_color" id="prod_color">
                                        <option value="Red">빨간색</option>
                                        <option value="lite-woody">밝은 우디</option>
                                        <option value="yellow">노란색</option>
                                        <option value="black">검은색</option>
                                    </select>
                                </td>
                            </tr>
                            <%} %>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="used_location" name="used_content" placeholder="상품 설명을 입력하세요."
                                        required></textarea>
                                </td>
                            </tr>
                            <%if(user.getU_type().equals("일반회원")){ %>
                            <tr>
                                <th>지역</th>
                                <td>
                                    <input type="text" id="used_location" name="used_location" placeholder="거래 지역을 입력해주세요.(ex. 광주광역시 동구 00동)"
                                        required>
                                </td>
                            </tr>
                            <%} %>
                        </table>
                
                </div>
                <div class="buttonContainer">
                <%if(user.getU_type().equals("일반회원")){ %>
                <button class="AllBtn" type="submit">저장하기</button>
                </div>
                </form>
                <%}else{ %>
                <button class="AllBtn" type="submit">등록하기</button>
                </div>
                </form>
                <%} %>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    const inputFile = document.getElementById('used_img');
    inputFile.addEventListener('change',()=>{
	    const file = inputFile.files[0];
		document.getElementById('present_img').src += file.name;
	})
	</script>
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