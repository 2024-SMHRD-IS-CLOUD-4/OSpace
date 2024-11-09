<%@page import="com.smhrd.model.UsedComment"%>
<%@page import="com.smhrd.model.UsedCommentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="com.smhrd.model.Used_Products"%>
<%@ page import="com.smhrd.model.Used_ProductsDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>O'Space</title>
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
<link rel="stylesheet" href="assets/css/ItemPage.css" type="text/css" />
</head>

<body>
	<%@ include file="Header.jsp"%>
	<%
	int prod_id = Integer.parseInt(request.getParameter("prod_id"));
	Used_ProductsDAO dao = new Used_ProductsDAO();
	Used_Products u = dao.getu_single_prod(prod_id);
	UsedCommentDAO uc_dao = new UsedCommentDAO();
	List<UsedComment> uc_lst = uc_dao.getAllComments(u.getUsed_id());
	%>
	<div id="body">
		<div class="contentBox">
			<div id="itemBoxT">
				<div id="itemBoxImg">
					<img src="<%=request.getContextPath()%>/upload/<%=u.getUsed_img()%>"
						alt="상품 이미지">
				</div>
				<div id="itemBoxTitle">
					<!--신고하기 클릭 시 로그인 하지 않았을 때는 로그인 창으로 넘어가기-->
					<p class="itemBoxCartegory">신고하기</p>
					<h1><%=u.getUsed_title()%></h1>
					<p class="itemBoxTitlePrise"><%=u.getUsed_price()%>
						원
					</p>
					<div class="usedSubTitleBox">
						<p class="itemBoxSubTitle">
							<span class="itemT">상품번호</span><span><%=u.getUsed_id()%></span>
						</p>
						<p class="itemBoxSubTitle">
							<span class="itemT">판매자</span><span><%=u.getId()%></span>
						</p>
						<p class="itemBoxSubTitle">
							<span class="itemT">등록일</span><span><%=u.getCreated_at()%></span>
						</p>
						<p class="itemBoxSubTitle">
							<span class="itemT">거래지역</span><span><%=u.getUsed_location()%></span>
						</p>
					</div>
				</div>
			</div>
			<div id="itemBoxContant">
				<!--상품 상세페이지 출력되는 부분-->
				<%=u.getUsed_content()%>
			</div>
			<div id="itemBoxComent">
				<h4>코멘트 남기기</h4>
				<ul>
					<%
					for (UsedComment uc : uc_lst) {
						List<UsedComment> urc_lst = uc_dao.getAllRecomments(uc.getUsedCmtId());
					%>
					<li>
						<div class="ComentContents">
							<div class="ComentContentsT"><%=uc.getUsedComments()%></div>
							<div class="ComentContentsC">
								<p>
									<span><%=uc.getId()%></span><span><%=uc.getCreatedAt()%></span>
								</p>
							</div>
							<button id="recomment">답글달기</button>
						</div> <%
						 for (UsedComment urc : urc_lst) {
						 %>
						<div class="ComentContentsAnser">
							<div class="ComentContentsT"><%=urc.getUsedComments() %></div>
							<div class="ComentContentsC">
								<p>
									<span><%=urc.getId() %></span><span><%=urc.getCreatedAt() %></span>
								</p>
							</div>
						</div>
					</li>
					<%
						}
					}
					%>
				</ul>
				<div class="itemBoxReviewPageNum">1 2 3 4 ></div>
			</div>
		</div>
	</div>
	<%@ include file="Footer.jsp"%>
	<nav id="loginMD">
		<%@ include file="MdLogin.jsp"%>
	</nav>
	<%@ include file="HeaderSub.jsp"%>
	<script>
		document.getElementById("recomment").addEventListener("click",()=>{
			
		})
        const mdOpen = () => {
            document.getElementById("loginMD").style.display = "block";
        }
       	const mdClose = () => {
       		document.getElementById("loginMD").style.display = "none";
       	}
        document.getElementById("headLoginBtn").addEventListener("click", mdOpen);
        document.getElementById("closeBtn").addEventListener("click", mdClose);
</script>
</body>
</html>