<%@page import="com.smhrd.model.ProductColors"%>
<%@page import="com.smhrd.model.ProductColorDAO"%>
<%@page import="com.smhrd.model.Products"%>
<%@page import="com.smhrd.model.ProductsDAO"%>
<%@page import="com.smhrd.model.BasketDAO"%>
<%@page import="com.smhrd.model.Basket"%>
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
				BasketDAO b_dao = new BasketDAO();
				List<Basket>b_lst = b_dao.getMyBasket(user.getId());
				ProductsDAO p_dao = new ProductsDAO();
			%>
			<div id="myPageRight">
				<h2>장바구니</h2>
				<div id="myPageContainer">
					<div>
					
						<table class="reviewSetupTable">
						<% for(Basket b :b_lst){ 
							Products p =p_dao.getSingleProduct(b.getProd_id());
							ProductColorDAO pc_dao = new ProductColorDAO();
							List<ProductColors> pc_lst = pc_dao.getProdColor(p.getProd_id());
						%>
							<tr>
								<td class="reviewCheckBox">
								</td>
								<td colspan="5" class="mypageProductimg">
									상품 상세
								</td>
								<td class="reviewDate">
									날짜
								</td>
							</tr>
							<tr>
								<td class="reviewCheckBox">
									<input name="check" type="checkbox" value="<%=b.getBasket_id()%>" />
								</td>
								<td class="mypageProductimg">
									<img src="<%=request.getContextPath()%>/upload/<%=p.getProd_img()%>">
								</td>
								<td class="mypageProductNum">
									<%=p.getProd_id()%>
								</td>
								<td class="reviewName">
									<%=p.getProd_name()%>
								</td>
								<td class="mypageProductNum">
									<%=p.getProd_color() %>
								</td>
								<td class="mypageProductNum">
									<%=p.getProd_price() %>
								</td>
								<td class="reviewDate">
									<%=b.getCreatedAt() %>
								</td>
							</tr>
							<%}%>
						</table>
					</div>
				</div>
				<div class="buttonContainer">
				<form action="AddOrderController">
					<input type="hidden" name="basket_lst" id="basket_lst1" value="">
					<button type="submit" id="paymentBnt" class="AllBtn">구매하기</button>
				</form>
				<form action="DeleteBasketController">
					<input type="hidden" name="basket_lst" id="basket_lst2" value="">
					<button type="submit"  class="AllBtn">삭제하기</button>
				</form>
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
	<% String bye = request.getParameter("bye"); %>
	<script src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>	
	<script type="text/javascript">
	let bye = '<%=bye%>';
	if(bye==='123'){
		openIMP();
	}
	
	let checks = document.getElementsByName('check');
	let basket_lst1 = document.getElementById('basket_lst1');
	let basket_lst2 = document.getElementById('basket_lst2');
	for(let i =0;i<checks.length;i++){
		checks[i].addEventListener('click',()=>{
			basket_lst1.value += checks[i].value+",";
			basket_lst2.value += checks[i].value+",";
			console.log(basket_lst1.value);
	})
	}
	
	 // IMP 객체 초기화

     function openIMP() {
	    IMP.init('imp16585716'); // 본인의 "고객사 식별코드"로 변경
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
    };
	</script>
</body>
</html>