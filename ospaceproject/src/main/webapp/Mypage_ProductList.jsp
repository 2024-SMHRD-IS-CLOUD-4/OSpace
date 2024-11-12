<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.Used_Products"%>
<%@page import="com.smhrd.model.Used_ProductsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
        <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
        <link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
    </head>

    <body>
        <%@ include file="Header.jsp" %>
            <div id="body">
                <div id="MyPageBox">
                    <%@ include file="MyPageLeft.jsp" %>
                        <div id="myPageRight">
                        <%
                        if(user.getU_type().equals("판매자회원")){ 
                        ProductsDAO p_dao = new ProductsDAO();
                        String id = user.getId();
                        List<Products> p_lst = p_dao.getMyProducts(id);
                        %>
                            <h2>등록상품 리스트</h2>
                            <div id="myPageContainer">
                                <table class="ProductList">
							<%for(Products p : p_lst){ %>
                                    <tr>
                                        <td rowspan="2">
                                            <input class="Productcheckbox" type="checkbox" name="check" value=<%=p.getProd_id() %>>
                                        </td>
                                        <td rowspan="2">
                                            <img class="Productimg" src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
                                        </td>
                                        <td>
                                            <p class="ProductNum"><%=p.getProd_id() %></p>
                                        </td>
                                        <td rowspan="2">
                                            <p><%=p.getProd_price() %>원</p>
                                        </td>
                                        <td rowspan="2">
                                            <p><%=p.getCreatedAt() %></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="Producttopic"><%=p.getProd_name() %></p>
                                        </td>
                                    </tr>
							<%}%>
                                </table>
                            </div>
							<% }else if(user.getU_type().equals("일반회원")){ %>
							<h2>등록 중고 상품 리스트</h2>
							<% 
								Used_ProductsDAO up_dao = new Used_ProductsDAO();
								List<Used_Products> up_lst = up_dao.getMyU_prod(user.getId());%>
								
							
                            <div id="myPageContainer">
                                <table class="ProductList">
                                <% for(Used_Products up : up_lst){%>
                                    <tr>
                                        <td rowspan="2">
                                            <input class="Productcheckbox" type="checkbox" name="check" value="<%=up.getUsed_id()%>">
                                        </td>
                                        <td rowspan="2">
                                            <img class="Productimg" src="<%=request.getContextPath()%>/upload/<%=up.getUsed_img()%>">
                                        </td>
                                        <td>
                                            <p class="ProductNum"><%=up.getUsed_id() %></p>
                                        </td>
                                        <td rowspan="2">
                                            <p><%=up.getUsed_price() %>원</p>
                                        </td>
                                        <td rowspan="2">
                                            <p><%=up.getCreated_at() %></p>
                                        </td>
                                        <td rowspan="2">
                                            <select class="Productstate" id="sold_state" name="sold_state">
                                                <option>판매중</option>
                                                <option>판매완료</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <p class="Producttopic"><%=up.getUsed_title() %></p>
                                        </td>
                                    </tr>
							<%}
								} %>
                                </table>
                            </div>
                            <div class="buttonContainer">
                    <form action="">
                    <input type="hidden" name="result" value="">
                    <button class="AllBtn" type="submit">저장하기</button>
                    </form>
                    <%if(user.getU_type().equals("일반회원")){ %>
                    <form action="DeleteUsedController">
                    <input type="hidden" name="result" value="">
                    <button class="AllBtn" type="submit">상품삭제</button>
                    </form>
                    <%}else{%>
                    	<form action="DeleteProduct">
                    <input type="hidden" name="result" value="">
                    <button class="AllBtn" type="submit">상품삭제</button>
                    </form>
                    	
                    <% }%>
                </div>
                        </div>
                </div>
            </div>

            <%@ include file="Footer.jsp" %>
                <nav id="loginMD">
                    <%@ include file="MdLogin.jsp" %>
                </nav>
                <nav id="serchMD">
                    <%@ include file="MdSerch.jsp" %>
                </nav>
                <%@ include file="HeaderSub.jsp" %>
    </body>
    </html>
	
<script type="text/javascript">
	let checks = document.getElementsByName('check');
	let result = document.getElementsByName('result');
	for(let i=0;i<checks.length;i++){
		checks[i].addEventListener('click',()=>{
			for(let j=0;j<result.length;j++){
				result[j].value += checks[i].value+",";
				console.log(result[j].value);
			}
		})
	}
	
        // 페이지 로드 후 select 요소에 이벤트 리스너 추가
        document.addEventListener("DOMContentLoaded", function () {
    const selectElements = document.querySelectorAll(".Productstate");

    // 모든 Productstate select 요소에 대해 반복
    selectElements.forEach(function(selectElement) {
        selectElement.addEventListener("change", function () {
            if (selectElement.value === "판매완료") {
                selectElement.classList.add("option-blue"); // '판매완료'일 때 파란색
            } else {
                selectElement.classList.remove("option-blue"); // 다른 값일 때 기본 색상으로
            }
        });
    });
});
</script>