<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.OrdersDAO"%>
<%@page import="com.smhrd.model.Order"%>
<%@page import="com.smhrd.model.Category"%>
<%@page import="com.smhrd.model.CategoryDAO"%>
<%@page import="com.smhrd.model.ReservedDAO"%>
<%@page import="com.smhrd.model.Reserved"%>
<%@page import="com.smhrd.model.Reviews"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ReviewsDAO"%>
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
<style type="text/css">

</style>
</head>

<body>
	<%@ include file="Header.jsp"%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPad.jsp"%>
			<div id="myPageRight">

				<h1>
					<%
					if (userType.equals("일반회원")) {
					%>
						<span class="member">일반회원</span>
					<%
					} else if (userType.equals("판매자회원")) {
					%>
						<span class="seller">판매자회원</span>
					<%
					} else {
					%>
						<span class="manager">관리자</span>
					<%
					}
					%>
					<%
					if (user != null) {
					%>
					<%=userName%>님 반갑습니다!
					<%}%>
				</h1>
				<%
						ProductsDAO p_dao = new ProductsDAO();
						ReviewsDAO r_dao = new ReviewsDAO();
						List<Reviews> r_lst = r_dao.getMyReview(user.getId());
						ReservedDAO rs_dao = new ReservedDAO();
						List<Reserved> rs_lst = rs_dao.getAllReserveds();
						CategoryDAO cat_dao = new CategoryDAO();
						List<Category> cat_lst = cat_dao.getAllCategory();
				%>
				<div class="line"></div>
				<div id="myPageRightContents">
					<div class="contentsLeft"><!-- 판매자 : 상품순위, 일반: 내 리뷰보기, 관리자 : 카테고리 등록 순위-->
						<div class="seller"><!-- 판매자 : 찜상품순위 -->
							<h4>내상품 찜 순위</h4>
							<ul>
							<% for(int i = 0; i < 4; i++){ 
								if(rs_lst.size()>=i+1){
									Products p = p_dao.getSingleProduct(rs_lst.get(i).getProd_id());							
							%>
								
								<li class="ContentsBox">
									<a href="itemPage.jsp?prod_id=<%=p.getProd_id()%>">
										<div class="ContentsImg">
											<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
										</div>
										<div class="ContentsText">
											<%=p.getProd_name() %><br>
											<%=p.getProd_color()%><br>
											<%=p.getProd_price()%><br>
										</div>
									</a>
								</li>
								
									<%}else{ %>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
									</div>
								</li>
									<%}
								} %>
							</ul>
						</div>
						<div class="member"> <!-- 일반회원 내 리뷰보기 -->
							<h4>내 리뷰 보기</h4>
							<ul>
								<%
								for (int i = 0; i < 4; i++) {
									if (r_lst.size()>=i+1) {
								%>
								<li class="ContentsBox">
									<a href="">
										<div class="ContentsImg">
											<img src="<%=r_lst.get(i).getReview_img()%>">
										</div>
										<div class="ContentsText">
											<p><%=r_lst.get(i).getReview_title()%></p>
											<p><%=r_lst.get(i).getReview_tag()%></p>
										</div>
									</a>
								</li>
								
								<%
								} else {
								%>
								<li class="ContentsBox">
									<a href="ReviewPage.jsp">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
									</div>
									</a>
								</li>
								<%
								}
								}
								%>
							</ul>
						</div>
						<div class="manager"><!-- 관리자 : 카테고리 등록 순위 -->
							<h4>카테고리 등록 순위</h4>
							<ul>
							<% int c_cnt=0; 
							for(Category cat : cat_lst){ 
								int num = cat_dao.categoryCount(cat.getCategory_id());
								c_cnt++;
							%>
								<li class="ContentsBox"><span class="ContentsRank"><%=c_cnt %></span>
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p><%=cat.getCategory_name()%></p>
										<p class="ContentsTextLeft"><%=num %>개</p>
									</div></li>
							<%	 if(c_cnt==4){break;}
							} %>
							</ul>
						</div>
					</div>

					<!-- 주문 내역 확인 구역 상품 이미지, 등록일자, 상품명, 색상, 개수, 가격, 주문 상태-->
					<div class="contentsRight">
						<div class="seller"><!-- 새 주문내역 -->
							<h4>새 주문내역</h4>
							<span>상세보기 > </span>
							<ul>
								<li class="contentsRightList">
									<div class="listImgBox">
										<img src="">
									</div>
									<div class="listTextBox">
										<p class="listTextBoxDate">2024-10-29</p>
										<p class="listTextBoxItemName">상품명상품명상품명</p>
										<div class="listTextBoxItemOption">
											옵션 :
											<div class="listTextBoxItemOptionColor"></div>
											빨간색
										</div>
										<div class="ItemOptionDetails">
											<p>1개</p>
											<p>50,000원</p>
										</div>
									</div>
									<div class="listOrderCheck">
										<p class="orderGreen">주문</p>
										<p class="orderRed">발송</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="member"><!-- 내 주문내역 -->
							<h4>주문내역</h4>
							<span>상세보기 > </span>
							<ul>
								<li class="contentsRightList">
									<div class="listImgBox">
										<img src="">
									</div>
									<div class="listTextBox">
										<p class="listTextBoxDate">2024-10-29</p>
										<p class="listTextBoxItemName">상품명상품명상품명</p>
										<div class="listTextBoxItemOption">
											옵션 :
											<div class="listTextBoxItemOptionColor"></div>
											빨간색
										</div>
										<div class="ItemOptionDetails">
											<p>1개</p>
											<p>50,000원</p>
										</div>
									</div>
									<div class="listOrderCheck">
										<p class="orderGreen">주문</p>
										<p class="orderRed">발송</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="manager"><!--  -->
							<h4>새 신고내역</h4>
							<span>상세보기 > </span>
							<ul>
								<li class="contentsRightList">
									<div class="listTextBox">
										<p class="listTextBoxDate">2024-10-29</p>
										<p class="listTextBoxItemName">제목</p>
									</div>
									<div class="listOrderCheck">
										<p class="orderRed">신고</p>
										<p class="orderGreen">해결</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
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
	<%
		String u_type = user.getU_type();
	%>
	<script>
    	let userType = "<%=userType%>";
    	const sellers = document.getElementsByClassName("seller");
    	const members = document.getElementsByClassName("member");
    	const managers = document.getElementsByClassName("manager");
    	if(userType==="일반회원"){
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="none"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="block"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="none"
    		}
    	}else if(userType==="판매자회원"){
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="block"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="none"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="none"
    		}
    	}else{
    		for(let i = 0;i<sellers.length;i++){
    			sellers[i].style.display="none"
    		}
    		for(let i = 0;i<members.length;i++){
    			members[i].style.display="none"
    		}
    		for(let i = 0;i<managers.length;i++){
    			managers[i].style.display="block"
    		}
    	}
    </script>
</body>
</html>