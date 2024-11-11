<%@page import="com.smhrd.model.Reviews"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.ReviewsDAO"%>
<%@page import="com.smhrd.model.UserDAO"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
    
</head>

<body>
	
    <%@ include file = "Header.jsp" %>
    
    <% 
	int prod_id = Integer.parseInt(request.getParameter("prod_id"));  
	ProductsDAO d_dao = new ProductsDAO();
	d_dao.incrementViews(prod_id);
	Products p = d_dao.getSingleProduct(prod_id);
	UserDAO user_dao = new UserDAO();
	User u = user_dao.getUser(p.getId());
	ReviewsDAO r_dao = new ReviewsDAO();
	List<Reviews> r_lst = r_dao.getProductReviews(p.getProd_id());
	String category = "";
	switch(p.getCategory_id()){
	case 1: category = "의자";
		break;
	case 2: category = "책상";
		break;
	case 3: category = "침대";
		break;
	case 4: category = "수납장";
		break;
	case 5: category = "커튼";
		break;
	case 6: category = "벽지";
		break;
	}
 %>
    <div id="body">
        <div class="contentBox">
            <div id="itemBoxT">
                <div id="itemBoxImg">
                    <img id="img" src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
                </div>
                <div id="itemBoxTitle">
                    <p class="itemBoxCartegory">카테고리 > <%=category %></p>
                    <h1 id="prod_name" ><%= p.getProd_name()%></h1>
                    <p id="prod_price" class="itemBoxTitlePrise"><%=p.getProd_price()%>원</p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">상품번호</span><span><%=p.getProd_id()%></span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">판매자</span><span><%=u.getName() %></span>
                    </p>
                    <p class="itemBoxSubTitle">
                        <span class="itemT">옵션선택</span>
                        <select id="op_choice">
                            <option>색상을 선택해주세요.</option>
                            <option value="검은색">검은색</option>
                            <option value="빨간색">빨간색</option>
                        </select>
                    </p>
                </div>
            </div>
            <div id="itemBoxPrice">
                <div class="itemBoxPrice">
                    <div id="optionBox">
                        <span>선택상품</span>
                        <div id="optionBoxScroll">
                            <ul id="op_result">
                            </ul>
                        </div>
                    </div>
                    <div id="priceBox">		
                        총 금액<span id="total_price"></span>
                    </div>
                    <div id="priceBoxSelect">
                    	<form action="ReservedController" method="post" id="form10">
                    		<input type="hidden" name="total_op"  id="total_op" value="">
                        	<button id="checkBox" name="prod_id" value="<%=p.getProd_id()%>"><div class="checkBox"></div>찜하기</button>
                        </form>
                        <form action="AddBasketController" method="post" id="form11">
                        	<input type="hidden" name="prod_id" value="<%=p.getProd_id()%>">
                        	<input type="hidden" name="total_op"  id="total_op" value="">
                        	<button type="submit" id="submit" class="AllBtn">장바구니 담기</button>
                        </form>
                        
                        <% if(user!=null){ %>
							<button id="paymentButton">결제하기</button>
						<%} %>
						
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>				
						
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
   <script type="text/javascript">

	let user_exist = '<%= session.getAttribute("user") %>';
	
	$(document).ready(()=>{
		$('#form10').submit((event)=>{
		    let user_exist = '<%= session.getAttribute("user") %>';
			if(user_exist==='null'){
				mdOpen();
				return false;
			}
			$(document).unbind('submit').submit();
		})
	})
	
    let price = parseInt(<%=p.getProd_price()%>);
	let total_price = 0;
	let op_choice = document.getElementById('op_choice');
	let options = document.getElementsByName("total_op");
	$("#op_choice").on("change",()=>{
    	if(user_exist==='null'){
    		mdOpen();
    	}
    	for(let i = 0;i<options.length;i++){
    		options[i].value += ($('#op_choice').val()+",");
    	}
    	document.getElementById("op_result").innerHTML +=("<li>옵션 : "+$("#op_choice").val())
		total_price += price;
		document.getElementById("total_price").innerText=total_price+'원';
	})
    
    $(document).ready(()=>{
		$('#form10').submit((event)=>{
			
		    let user_exist = '<%= session.getAttribute("user") %>';
			if(user_exist==='null'){
				mdOpen();
				return false;
			}
			$(document).unbind('submit').submit();
		})
	})
	 $(document).ready(()=>{
		$('#form11').submit((event)=>{
			if(user_exist==='null'){
				mdOpen();
				return false;
			}
			
			$(document).unbind('submit').submit();
		})
	})
    
                        
	
    
    
        // IMP 객체 초기화
        IMP.init('imp16585716'); // 본인의 "고객사 식별코드"로 변경

        if(user_exist!=='null'){
        document.getElementById('paymentButton').addEventListener('click', function () {
            IMP.request_pay({
                pg: 'html5_inicis', // 결제 대행사 (예: KG이니시스)
                pay_method: 'card', // 결제 수단 (예: 카드 결제)
                merchant_uid: 'merchant_' + new Date().getTime(), // 주문 번호
                name: '테스트 결제', // 결제 이름
                amount: 1000, // 결제 금액
                buyer_email: 'test@test.com', // 구매자 이메일
                buyer_name: '홍길동', // 구매자 이름
                buyer_tel: '010-1234-5678', // 구매자 전화번호
                buyer_addr: '서울특별시 강남구 삼성동', // 구매자 주소
                buyer_postcode: '123-456', // 구매자 우편번호
            }, function (rsp) {
                if (rsp.success) {
                    alert('결제가 완료되었습니다. 결제 금액: ' + rsp.paid_amount);
                } else {
                    alert('결제에 실패하였습니다. 오류 내용: ' + rsp.error_msg);
                }
            });
        });
        }
    </script>
                    </div>
                </div>
            </div>
            <div id="itemBoxContant">
                <!--상품 상세페이지 출력되는 부분-->
                <img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
                <p><%=p.getProd_desc() %></p>
            </div>
            <div id="itemBoxReview">
                <h4>리뷰</h4>
                <ul>
                <% 
                	for(Reviews r : r_lst){ 
                	String [] tags = r.getReview_tag().split(",");
                %>
                    
                    <li>
                    <a href="ReviewPage.jsp?prod_id=<%=p.getProd_id()%>">
                        <div class="itemBoxReviewleft">
                            <img src="<%=request.getContextPath()%>/upload/<%=r.getReview_img()%>">
                        </div>
                        <div class="itemBoxReviewRight">
                            <p>
                            <%for(String tag : tags){ %>
                            <span>#<%=tag%></span>
                            <%} %>
                            </p>
                            <div>
                            <p><%=r.getReview_content()%></p>
                            </div>
                            <div class="itemBoxReviewRightR">
                                <p><%=r.getId() %></p>
                                <p><%=r.getCreated_at() %></p>
                            </div>
                        </div>
                        </a>
                    </li>
                    
                    <%}%>
                </ul>
            </div>
        </div>
    </div>
        <%@ include file = "Footer.jsp" %>
    	<nav id="loginMD">
			<%@ include file="MdLogin.jsp"%>
		</nav>
		<nav id="serchMD">
		<%@ include file="MdSerch.jsp"%>
	</nav>
	<nav id="basketMD">
		<%@ include file="MdBasket.jsp"%>
	</nav>
	<%@ include file="HeaderSub.jsp"%>
</body>
</html>