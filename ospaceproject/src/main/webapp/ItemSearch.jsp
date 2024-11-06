<%@page import="com.smhrd.model.Used_ProductsDAO"%>
<%@page import="com.smhrd.model.Used_Products"%>
<%@page import="com.smhrd.model.ReviewsDAO"%>
<%@page import="com.smhrd.model.Reviews"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>O'Space</title>
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
</head>
<body>
	<header id="header">
		<div id="logo">
			<div>
				<a href="Main.jsp"> <img
					src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
					O'Space
				</a>
			</div>
		</div>
		<div id="serch">
			<button type="button" class="serch">
				<img class="btnImg"
					src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
				|
				<div>검색하기</div>
			</button>
		</div>
		<div id="con">
			<div id="nav">
				<ul>
					<li><a href="ItemSearch.jsp?title=카테고리">카테고리</a></li>
					<li><a href="ItemSearch.jsp?title=리뷰보기">리뷰보기</a></li>
					<li><a href="ItemSearch.jsp?title=중고거래">중고거래</a></li>
				</ul>
			</div>
			<div id="login">
				<%
				if (session.getAttribute("user") == null) {
				%>
				<span><a href="Login.html">로그인</a></span>
				<%
				} else {
				%>
				<span><a href="MyPage.jsp">마이페이지</a></span> <span><a
					href="LogoutController">로그아웃</a></span>
				<%
				}
				%>
				<span><a href="#">고객센터</a></span>
			</div>
		</div>
	</header>
	<%
	ProductsDAO p_dao = new ProductsDAO();
	ReviewsDAO r_dao = new ReviewsDAO();
	Used_ProductsDAO u_dao = new Used_ProductsDAO();
	String title = request.getParameter("title");
	%>
	<div id="body">
		<!--리뷰를 클릭하면 리뷰가 나오게, 
        카테고리를 클릭하면 첫 카테고리가 나오게, 
        중고거래를 클릭하면 중고거래가 나오게-->
		<div id="mainItem01">
			<div class="itemTitle">
				<h1 calss="mainItemTitle">
					<span id="title"></span>
				</h1>
			</div>
			<div class="itemBox">
				<ul>
					<%
					if (title.equals("리뷰보기")) {
						List<Reviews> r_lst = r_dao.getreview();
						for (Reviews r : r_lst) {
							String tags[] = r.getReview_tag().split(",");
					%>
					<li>
						<div class="itemSmallBox">
							<a href="ProductDetail.jsp?prod_id=<%=r.getProd_id()%>">
								<div class="itemSmallBoxImg">
									<img
										src="<%=request.getContextPath()%>/upload/<%=r.getReview_img()%>">
								</div>
								<div class="itemSmallBoxText">
									<p class="itmSellerID"><%=r.getId()%></p>
									<%
									for (String tag : tags) {
									%>
									<p class="itemName"># <%=tag%></p>
									<%
									}
									%>
								</div>
							</a>
						</div>
					</li>
					<%
					}
					} else if (title.equals("카테고리")) {
					List<Products> p_lst = p_dao.getAllProducts();
					for (Products p : p_lst) {
					%>
					<li>
						<div class="itemSmallBox">
							<a href="ProductDetail.jsp?prod_id=<%=p.getProd_id()%>">
								<div class="itemSmallBoxImg">
									<img
										src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								</div>
								<div class="itemSmallBoxText">
									<p class="itmSellerID"><%=p.getId()%></p>
									<p class="itemName"><%=p.getProd_name()%></p>
									<p class="itemPrice"><%=p.getProd_price()%></p>
								</div>
							</a>
						</div>
					</li>

					<%
					}
					} else {
					List<Used_Products> u_lst = u_dao.getu_prod();
					for (Used_Products u : u_lst) {
					%>
					<li>
						<div class="itemSmallBox">
							<a href="ProductDetail.jsp?prod_id=<%=u.getUsed_id()%>">
								<div class="itemSmallBoxImg">
									<img
										src="<%=request.getContextPath()%>/upload/<%=u.getUsed_img()%>">
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
					}
					}
					%>
				</ul>
			</div>
		</div>
	</div>
	<footer id="footer">
		<div>
			<a href="#">고객센터 문의글작성하기</a>
		</div>
	</footer>
	<script type="text/javascript">
		const urlParams = new URLSearchParams(window.location.search);
		const title = urlParams.get('title');
		const subTitle = urlParams.get('subTitle');
		if(subTitle!==null){
			document.getElementById("title").innerText = title+">"+subTitle;
		}else{
			document.getElementById("title").innerText = title;
		}
		
	</script>
</body>
</html>