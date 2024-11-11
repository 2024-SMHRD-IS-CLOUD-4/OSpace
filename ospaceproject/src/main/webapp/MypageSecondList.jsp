<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
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
                        <h2>등록상품 리스트_중고</h2>
                        <div id="myPageContainer">
							<table class="secondList">
								<tr>
									<td rowspan="2">
										<input class="secondcheckbox" type="checkbox"> 
									</td>
									<td rowspan="2">
										<img class="secondimg">
									</td>
									<td>
										<p class="secondNum">00001</p>
									</td>
									<td rowspan="2">
										<p>50,000</p>
									</td>
									<td rowspan="2">
										<p>2024.10.23</p>
									</td>
									<td rowspan="2">
										<select class="secondstate">
											<option>판매중</option>
											<option>판매완료</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<p class="secondtopic">가나다라마바사아자차</p>
									</td>
								</tr>
							</table>
							<table class="secondList">
								<tr>
									<td rowspan="2">
										<input class="secondcheckbox" type="checkbox"> 
									</td>
									<td rowspan="2">
										<img class="secondimg">
									</td>
									<td>
										<p class="secondNum">00001</p>
									</td>
									<td rowspan="2">
										<p>50,000</p>
									</td>
									<td rowspan="2">
										<p>2024.10.23</p>
									</td>
									<td rowspan="2">
										<select class="secondstate">
											<option>판매중</option>
											<option>판매완료</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<p class="secondtopic">가나다라마바사아자차</p>
									</td>
								</tr>
							</table>
							<table class="secondList">
								<tr>
									<td rowspan="2">
										<input class="secondcheckbox" type="checkbox"> 
									</td>
									<td rowspan="2">
										<img class="secondimg">
									</td>
									<td>
										<p class="secondNum">00001</p>
									</td>
									<td rowspan="2">
										<p>50,000</p>
									</td>
									<td rowspan="2">
										<p>2024.10.23</p>
									</td>
									<td rowspan="2">
										<select class="secondstate">
											<option>판매중</option>
											<option>판매완료</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>
										<p class="secondtopic">가나다라마바사아자차</p>
									</td>
								</tr>
							</table>
                        </div>
							<div class="sceondlistPageBtn">
                                <button class="pageBtn"> ◁ </button>
                                <span>1 </span>
                                <span>2 </span>
                                <span>3 </span>
                                <span>4 </span>
                                <span>5 </span>
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

            <%@ include file="Footer.jsp" %>
                <nav id="loginMD">
                    <%@ include file="MdLogin.jsp" %>
                </nav>
                <nav id="serchMD">
                    <%@ include file="MdSerch.jsp" %>
                </nav>
                <%@ include file="HeaderSub.jsp" %>

    </body>

    </html>
   
    <script>
    // 페이지 로드 후 select 요소에 이벤트 리스너 추가
    document.addEventListener("DOMContentLoaded", function() {
        const selectElement = document.querySelector(".secondstate");

        // 값이 변경될 때마다 실행
        selectElement.addEventListener("change", function() {
            if (selectElement.value === "판매완료") {
                selectElement.classList.add("option-blue"); // '판매완료'일 때 파란색
            } else {
                selectElement.classList.remove("option-blue"); // 다른 값일 때 기본 색상으로
            }
        });
    });
</script>