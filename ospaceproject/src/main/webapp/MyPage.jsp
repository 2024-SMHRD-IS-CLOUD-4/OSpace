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
			<%@ include file="MyPageLeft.jsp"%>
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
						ReviewsDAO r_dao = new ReviewsDAO();
						List<Reviews> r_lst = r_dao.getMyReview(user.getId());
						System.out.println(r_lst.size());
				%>
				<div class="line"></div>
				<div id="myPageRightContents">
					<div class="contentsLeft">
						<!-- 리뷰 모음(일반회원) / 상품순위(판매자) 확인 구역 -->
						<div class="seller">
							<h4>내상품 찜 순위</h4>
							<ul>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
									</div>
								</li>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
									</div>
								</li>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
									</div>
								</li>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 상품 등록하고 찜 개수를 늘려보세요!</p>
									</div>
								</li>
							</ul>
						</div>
						<div class="member">
							<h4>내 리뷰 보기</h4>
							<ul>
								<%
								for (int i = 0; i < 4; i++) {
									if (r_lst.size()>=i+1) {
								%>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="<%=r_lst.get(i).getReview_img()%>">
									</div>
									<div class="ContentsText">
										<p><%=r_lst.get(i).getReview_title()%></p>
										<p><%=r_lst.get(i).getReview_tag()%></p>
									</div>
								</li>
								<%
								} else {
								%>
								<li class="ContentsBox">
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>첫 리뷰를 작성하고 나만의 멋진 인테리어를 공유해보세요!</p>
									</div>
								</li>
								<%
								}
								}
								%>
							</ul>
						</div>
						<div class="manager">
							<h4>카테고리 등록 순위</h4>
							<ul>
								<li class="ContentsBox"><span class="ContentsRank">1</span>
									<div class="ContentsImg">
										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>카테고리명</p>
										<p class="ContentsTextLeft">00개</p>
									</div></li>
								<li class="ContentsBox"><span class="ContentsRank">2</span>
									<div class="ContentsImg">

										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>카테고리명</p>
										<p class="ContentsTextLeft">00개</p>
									</div></li>
								<li class="ContentsBox"><span class="ContentsRank">3</span>
									<div class="ContentsImg">

										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>카테고리명</p>
										<p class="ContentsTextLeft">00개</p>
									</div></li>
								<li class="ContentsBox"><span class="ContentsRank">4</span>
									<div class="ContentsImg">

										<img src="image/camera_icon.png">
									</div>
									<div class="ContentsText">
										<p>카테고리명</p>
										<p class="ContentsTextLeft">00개</p>
									</div></li>
							</ul>
						</div>
					</div>

					<!-- 주문 내역 확인 구역 상품 이미지, 등록일자, 상품명, 색상, 개수, 가격, 주문 상태-->
					<div class="contentsRight">
						<div class="seller">
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
						<div class="member">
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
						<div class="manager">
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