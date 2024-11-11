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
    <body>
        <%@ include file="Header.jsp" %>
            <div id="body">
                <div id="MyPageBox">
                    <%@ include file="MyPageLeft.jsp" %>

                        <div id="myPageRight">
                            <h2>내가 작성한 리뷰목록</h2>
                            <div id="myPageContainer">
                                <div>
                                    <table class="reviewSetupTable">
                                        <tr>
                                            <td class="reviewCheckBox" rowspan="2">
                                                <input type="checkbox" />
                                            </td>
                                            <td class="reviewImg" rowspan="2">
                                                    <img src="#">
                                            </td>
                                            <td>
                                                <p class="reviewName">#상품명1 #상품명2 #상품명3</p>
                                            </td>
                                            <td>
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
                                            <td>
                                                <p class="reviewText">먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</p>
                                            </td>
                                            <td>
                                                <p class="reviewDate"> 날짜</p>
                                            </td>
                                        </tr>
                                    </table>
                                    
                                    <table class="reviewSetupTable">
                                        <tr class="tr">
                                            <td class="reviewCheckBox" rowspan="2">
                                                <input type="checkbox" />
                                            </td>
                                            <td class="reviewImg" rowspan="2">
                                                    <img src="#">
                                            </td>
                                            <td>
                                                <p class="reviewName">#상품명1 #상품명2 #상품명3</p>
                                            </td>
                                            <td>
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
                                            <td>
                                                <p class="reviewText">먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</p>
                                            </td>
                                            <td>
                                                <p class="reviewDate"> 날짜</p>
                                            </td>
                                        </tr>
                                    </table>
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