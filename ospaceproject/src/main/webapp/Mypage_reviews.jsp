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
					<%	
						int review_id =0;
						if(request.getParameter("result")!=null){
							review_id = Integer.parseInt(request.getParameter("result"));
						}
						ReviewsDAO r_dao = new ReviewsDAO();
						Reviews r = r_dao.getMyProductReview(review_id);				
					%>
                        <div id="myPageRight">
                            <h2>리뷰작성하기</h2>
                            <div id="myPageContainer">
                                <div>
                                    <div class="reviewtableContainer">
                                    <form action="ReviewWriteController">
                                        <table class="reviewTable">
											<input type="hidden" name="">
                                            <tr class="tr">
                                                <td class="td">작성자</td>
                                                <td class="reviewtableColumns"><%=user.getName() %></td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">리뷰상품</td>
                                                <td class="reviewtableColumns">
                                                    <label class="fileLabel" for="fileinputReview">상품찾기</label>
                                                    <input type="file" name="review_img" id="fileinputReview" class="fileinputReview">
                                                    <div class="previewContainer1" id="previewContainer1"></div>
                                                </td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">이미지</td>
                                                <td class="reviewtableColumns">
                                                   	<img id="present_img" src="<%=request.getContextPath()%>/upload/">
                                                </td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">리뷰내용</td>
                                                <td class="reviewtableColumns">
                                                    <textarea id="reviewTextBox" name="review_content" class="reviewTextbox"
                                                        placeholder="리뷰 내용을 입력하세요..."></textarea>
                                                </td>
                                            </tr>
                                            <tr class="tr">
                                                <td class="td">상품평점</td>
                                                <td class="reviewtableColumns">
                                                    <div>
                                                        <select class="gpa" name="ratings" onchange="updateStars()">
                                                            <option value="1">1</option>
                                                            <option value="2">2</option>
                                                            <option value="3">3</option>
                                                            <option value="4">4</option>
                                                            <option value="5">5</option>
                                                        </select>
                                                        점
                                                        <div id="starContainer">
                                                            <span class="star">☆</span>
                                                            <span class="star">☆</span>
                                                            <span class="star">☆</span>
                                                            <span class="star">☆</span>
                                                            <span class="star">☆</span>
                                                        </div>
                                                    </div>
                                                </td>
                                            </tr>

                                            <tr class="tr">
                                                <td class="td">작성일자</td>
                                                <td class="reviewtableColumns">
                                                    <input type="date" id="reviewDate">
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="buttonContainer">
                                <button class="AllBtn" type="submit">저장하기</button>
                                        </form>
                                <a href="Mypage_reviewsList.jsp"><button class="AllBtn" type="submit">리뷰확인하기</button></a>
                            </div>
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

                    <script>
                    const inputFile = document.getElementById('fileinputReview');
                    inputFile.addEventListener('change',()=>{
                	    const file = inputFile.files[0];
                		document.getElementById('present_img').src += file.name;
                	})

                        // 별 점수 업데이트 함수
                        function updateStars() {
                            const rating = parseInt(document.querySelector('.gpa').value); // 선택된 점수 값 가져오기
                            const stars = document.querySelectorAll('#starContainer .star'); // 별 요소들 선택

                            stars.forEach((star, index) => {
                                if (index < rating) {
                                    star.style.color = '#FFD700'; // 별 채우기 (금색)
                                } else {
                                    star.style.color = '#ddd'; // 별 비우기 (회색)
                                }
                            });
                        }

                        // 페이지 로드 시 별 1점으로 초기화
                        window.onload = function () {
                            const defaultRating = 1;  // 초기 값은 1점
                            document.querySelector('.gpa').value = defaultRating;
                            updateStars();  // 별을 1점으로 설정

                            // 현재 날짜를 가져와서 작성일자에 자동으로 설정
                            const today = new Date();
                            const yyyy = today.getFullYear();
                            let mm = today.getMonth() + 1; // 월은 0부터 시작하므로 1을 더함
                            let dd = today.getDate();

                            if (mm < 10) mm = '0' + mm; // 월이 한 자리 수일 경우 앞에 0을 추가
                            if (dd < 10) dd = '0' + dd; // 일이 한 자리 수일 경우 앞에 0을 추가

                            const formattedDate = yyyy + '-' + mm + '-' + dd;
                            document.getElementById('reviewDate').value = formattedDate; // 날짜 입력 필드에 설정
                        };
                    </script>

    </body>

    </html>