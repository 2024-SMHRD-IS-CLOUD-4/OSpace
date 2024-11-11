<%@page import="com.smhrd.model.Used_Products"%>
<%@page import="com.smhrd.model.Used_ProductsDAO"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>O'Space</title>
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
	<%@ include file="Header.jsp"%>
	<%
		ProductsDAO p_dao = new ProductsDAO();
		List<Products> p_lst = p_dao.orderByDate();
		Used_ProductsDAO u_dao = new Used_ProductsDAO();
		List<Used_Products> u_lst = u_dao.orderByDate();
		String[] category = {"의자", "책상", "침대", "수납장", "커튼", "벽지"};
	%>
	<div id="body">
		<div id="mainBanner">
			<img class="slideImg" src="image/slidImg01.png">
			<div id="btnRight">
				<img src="image/btnRight.png">
			</div>
			<div id="btnLeft">
				<img src="image/btnLeft.png">
			</div>
		</div>
		<div id="mainCategory">
			<div id="mainCategoryCon">
				<ul>
					<% for (String c : category) { %>
					<li>
						<a href="ItemSearch.jsp?title=카테고리&subTitle=<%=c%>">
							<div class="mainCategoryImg">
								<img src="image/<%=c%>.png">
							</div>
							<p><%=c%></p>
						</a>
					</li>
					<% } %>
				</ul>
			</div>
		</div>
		<div id="mainItem02">
			<div class="itemTitle">
				<h5 class="subItemTitle">new</h5>
				<h1 class="mainItemTitle">최근 등록 순</h1>
			</div>
			<div class="itemBox">
				<ul>
					<%
					int cnt1 = 0;
					for (Products p : p_lst) {
					%>
					<li>
						<div class="itemSmallBox">
							<a href="itemPage.jsp?prod_id=<%=p.getProd_id()%>">
								<div class="itemSmallBoxImg">
									<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								</div>
								<div class="itemSmallBoxText">
									<p class="itmSellerID"><%=p.getId()%></p>
									<p class="itemName"><%=p.getProd_name()%></p>
									<p class="itemPrice"><%=p.getProd_price()%>원</p>
								</div>
							</a>
						</div>
					</li>
					<%
					cnt1++;
					if(cnt1==8) break;
					}
					%>
				</ul>
			</div>
		</div>
		<div id="mainItem02">
			<div class="itemTitle">
				<h5 class="subItemTitle">중고거래</h5>
				<h1 class="mainItemTitle">최근 등록 순</h1>
			</div>
			<div class="itemBox">
				<ul>
				<%
					int cnt2=0;
					for (Used_Products u : u_lst) {
				%>
					<li>
						<div class="itemSmallBox">
							<a href="#">
								<div class="itemSmallBoxImg">
									<img src="<%=request.getContextPath()%>/upload/<%=u.getUsed_img()%>">
								</div>
								<div class="itemSmallBoxText">
									<p class="itmSellerID"><%=u.getId()%></p>
									<p class="itemName"><%=u.getUsed_title()%></p>
									<p class="itemPrice"><%=u.getUsed_price()%></p>
								</div>
							</a>
						</div>
					</li>
					<%
					cnt2++;
					if(cnt2==8) break;
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
</body>
</html>