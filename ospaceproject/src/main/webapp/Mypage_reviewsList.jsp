<%@page import="com.smhrd.model.Reviews"%>
<%@page import="com.smhrd.model.ReviewsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<title>O'Space</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
	<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
</head>

	<%@ include file="Header.jsp" %>
<body>
<%
	ReviewsDAO r_dao = new ReviewsDAO();
	List<Reviews> r_lst = r_dao.getMyReview(user.getId());
%>
	<div id="body">
		<div id="MyPageBox">
			<%@ include file="MyPageLeft.jsp" %>
			<div id="myPageRight">
				<h2>리뷰 리스트</h2>
					<div id="myPageContainer">
						<div>
							<table class="reviewSetupTable">
							<% for(Reviews r : r_lst){ %>
								<tr class="tr">
									<td rowspan="2">
										<input class="reviewCheckBox" name="check" type="checkbox" value="<%=r.getReview_id() %>" />
									</td>
									<td rowspan="2">
										<p>
											<img class="reviewImg" src="#">
										</p>
									</td>
									<td>
										<p class="reviewName">
										<% String tags[] = r.getReview_tag().split(","); 
										for(String tag : tags){%>
											<%=tag %>
										<%} %>
										</p>
									</td>
									<td>
										<p class="reviewStar">
												&#9733;&#9733;&#9733;&#9733;&#9733;
										</p>
									</td>
								</tr>
								<tr>
									<td>
										<p class="reviewText"><%=r.getReview_content() %></p>
									</td>
									<td class="reviewDate">
										<p><%=r.getCreated_at() %></p>
									</td>
								</tr>
								<%} %>
							</table>
                                </div>
                            </div>
                            <div class="buttonContainer">
                           	<a href="Mypage_reviews.jsp"><button class="AllBtn" type="submit">작성하기</button></a>
                            
                            <form action="DeleteReviewController" class="fromBlock">
                            		<input type="hidden" id="result2" name="result" value="">
                                    <button class="AllBtn" type="submit">삭제하기</button>
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
	<script type="text/javascript">
		  const checks = document.getElementsByName("check");
		  for(let i = 0;i<checks.length;i++){
			  	checks[i].addEventListener("click",()=>{
				document.getElementById("result1").value += (checks[i].value+",");
				document.getElementById("result2").value += (checks[i].value+",");
			  	console.log(document.getElementById("result1").value);
			  })
		  }
	</script>
    </body>
    </html>