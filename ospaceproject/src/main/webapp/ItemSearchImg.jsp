<%@page import="com.smhrd.model.Products"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>O'Space</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
</head>
<body>
    <%@ include file="Header.jsp"%>    
   <%String title = request.getParameter("title"); %>
   
    <div id="body">
        <div id="mainItem01">
            <div class="itemTitle">
                <h1 class="mainItemTitle">
                    <span>O'Space</span>
                </h1>
            </div>
            <div class="itemBox">
                <ul>
                    <%
                        // 컨트롤러에서 전달받은 RGB 검색 결과 처리
                        List<Products> rgbProducts = (List<Products>) request.getAttribute("products");
                        if (rgbProducts != null && !rgbProducts.isEmpty()) {
                            for (Products product : rgbProducts) {
                    %>
                    <li>
                        <div class="itemSmallBox">
                            <a href="itemPage.jsp?prod_id=<%=product.getProd_id()%>">
                                <div class="itemSmallBoxImg">
                                    <img src="<%=request.getContextPath()%>/upload/<%=product.getProd_img()%>" alt="<%=product.getProd_name()%>">
                                </div>
                                <div class="itemSmallBoxText">
                                    <p class="itmSellerID"><%=product.getId()%></p>
                                    <p class="itemName"><%=product.getProd_name()%></p>
                                    <p class="itemPrice"><%=product.getProd_price()%>원</p>
                                </div>
                            </a>
                        </div>
                    </li>
                    <%
                            }
                        } else {
                    %>
                    <p>검색 결과가 없습니다.</p>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>

    <%@ include file="Footer.jsp"%>
    <nav id="loginMD">
        <%@ include file="MdLogin.jsp"%>
    </nav>
    <nav id="serchMD">
        <%@ include file="MdSerch.jsp"%>
    </nav>
    <%@ include file="HeaderSub.jsp"%>

    <script type="text/javascript">
        const urlParams = new URLSearchParams(window.location.search);
        const title = '<%= title %>';
        const subTitle = urlParams.get('subTitle');
        if (subTitle !== null) {
            document.getElementById("title").innerText = title + " > " + subTitle;
        } else {
            document.getElementById("title").innerText = title;
        }
    </script>
</body>
</html>
