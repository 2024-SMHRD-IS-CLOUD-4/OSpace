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
	<div id="body">
        <div id="MyPageBox">
            <%@ include file="MyPageLeft.jsp"%>
            <% 
            	CategoryDAO cat_dao = new CategoryDAO();
            	List<Category>cats = cat_dao.getAllCategory();
            %>
            <div id="myPageRight">
                <h2>
                    상품등록하기
                </h2>
                <div id="myPageContainer">
                    <form action="ProdaddController" method="post" enctype="multipart/form-data">
                        <table class="productAdd">
                            <tr>
                                <th>상품 ID</th>
                                <td>상품 ID는 등록 완료 시 자동 부여됩니다.</td>
                            </tr>
                            <tr>
                                <th>판매자</th>
                                <td>
                                    <%=userName%>
                                </td>
                            </tr>
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
                                <th>상품명</th>
                                <td>
                                    <input type="text" id="prod_name" name="prod_name" placeholder="상품명을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="2">대표이미지</th>
                                <td>
                                    <input type="file" id="prod_img" name="prod_img" required>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <img id="img" src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>" alt="대표이미지">
                                </td>
                            </tr>
                            <tr>
                                <th>가격</th>
                                <td>
                                    <input type="text" id="prod_price" name="prod_price" placeholder="상품 가격을 입력하세요."
                                        required>
                                </td>
                            </tr>
                            <!--  <tr>
                                <th rowspan="2">사이즈옵션</th>
                                <td>
                                    <select name="prod_op" id="prod_op">
                                        <option value="s"> S</option>
                                        <option value="m"> M</option>
                                        <option value="l"> L</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <ul>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                        <li>선택한 사이즈를 표기하기 <span>X</span></li>
                                    </ul>
                                </td>
                            </tr>-->
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
                            <tr>
                                <td>
                                    <ul>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>내용</th>
                                <td>
                                    <textarea id="prod_desc" name="prod_desc" placeholder="상품 설명을 입력하세요."required></textarea>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <div class="buttonContainer">
                <form action="Mypage_ProductAdd.jsp">
                    <button class="AllBtn" type="submit">등록하기</button>
                </form>
                    <a href="Mypage_ProductAdd.jsp"><button class="AllBtn">상품리스트보기</button></a>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    	document.getElementById('img').addEventListner('')
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