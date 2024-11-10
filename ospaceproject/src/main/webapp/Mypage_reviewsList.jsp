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

<<<<<<< HEAD
    </head>

    <body>
        <%@ include file="Header.jsp" %>
            <div id="body">
                <div id="MyPageBox">
                    <%@ include file="MyPageLeft.jsp" %>

                        <div id="myPageRight">
                            <h2>상품등록하기</h2>
                            <div id="myPageContainer">
                                <div>
                                    <table class="reviewSetupTable">
                                        <tr class="tr">
                                            <td class="td" rowspan="2">
                                                <input class="reviewCheckBox" type="checkbox" />
                                            </td>
                                            <td class="td" rowspan="2">
                                                <p>
                                                    <img class="reviewImg">
                                                </p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewName">#상품명1 #상품명2 #상품명3</p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewStar">
                                                <div class="reviewStar">
                                                    <span class="star" data-value="1">&#9733;</span>
                                                    <span class="star" data-value="2">&#9733;</span>
                                                    <span class="star" data-value="3">&#9733;</span>
                                                    <span class="star" data-value="4">&#9733;</span>
                                                    <span class="star" data-value="5">&#9733;</span>
                                                </div>
                                                </p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="td">
                                                <p class="reviewText">먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewDate"> 날짜</p>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                    <table class="reviewSetupTable">
                                        <tr class="tr">
                                            <td class="td" rowspan="2">
                                                <input class="reviewCheckBox" type="checkbox" />
                                            </td>
                                            <td class="td" rowspan="2">
                                                <p>
                                                    <img class="reviewImg">
                                                </p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewName">#상품명1 #상품명2 #상품명3</p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewStar">
                                                <div class="reviewStar">
                                                    <span class="star" data-value="1">&#9733;</span>
                                                    <span class="star" data-value="2">&#9733;</span>
                                                    <span class="star" data-value="3">&#9733;</span>
                                                    <span class="star" data-value="4">&#9733;</span>
                                                    <span class="star" data-value="5">&#9733;</span>
                                                </div>
                                                </p>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td class="td">
                                                <p class="reviewText">먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</p>
                                            </td>
                                            <td class="td">
                                                <p class="reviewDate"> 날짜</p>
                                            </td>
                                        </tr>
                                    </table>
=======
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
>>>>>>> branch 'master' of https://github.com/2024-SMHRD-IS-CLOUD-4/OSpace
                                </div>
                                
                                
                                
                            </div>
                             
                                <div class="reviewPageBtn">
                                	<button class="pageBtn"> ◁ </button>
                                	<span>1</span>
                                	<span>2</span>
                                	<span>3</span>
                                	<span>4</span>
                                	<span>5</span>
                                	<button class="pageBtn"> ▷ </button>
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