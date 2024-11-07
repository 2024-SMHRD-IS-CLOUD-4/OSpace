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
                    <div id="myPageLeft">
                        <div id="myPageLeft">
                            <div class="myPageLeftUser">
                                <h2 class="seller">판매자회원</h2>
                                <h2 class="member">일반회원</h2>
                                <h2 class="manager">관리자</h2>
                            </div>
                            <div class="myPageLeftNav">
                                <ul>
                                    <li class="seller">등록상품관리</li>
                                    <li class="member">주문관리</li>
                                    <li class="member">회원정보수정</li>
                                    <li class="member">리뷰</li>
                                    <li class="member">찜 목록</li>
                                    <li class="member">중고거래</li>
                                    <li class="member">장바구니</li>
                                    <li class="member">주문내역</li>
                                    <li class="manager">카테고리관리</li>
                                    <li class="manager">신고관리</li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div id="myPageRight">
                        <h2>
                            리뷰작성하기
                        </h2>
                        <div id="myPageContainer">
                            <div>
                                <div class="reviewtableContainer">
                                    <table class="reviewTable">


                                        <tr class="tr">
                                            <td class="td">작성자</td>
                                            <td class="reviewtableColumns">작성자 닉네임</td>
                                        </tr>

                                        <tr class="tr">
                                            <td class="td">리뷰상품</td>
                                            <td class="reviewtableColumns">
                                                <label class="fileLabel" for="fileinputReview">상품찾기</label>
                                                <input type="file" id="fileinputReview" class="fileinputReview"
                                                    onchange="displayFileName()">
                                            </td>
                                        </tr>

                                        <tr class="tr">
                                            <td class="td">이미지</td>
                                            <td class="reviewtableColumns">
                                                <label class="fileLabel" for="fileinputImg">파일찾기</label>
                                                <input type="file" id="fileinputImg" class="fileinputImg"
                                                    onchange="addPreviewImage()">
                                                <div class="previewContainer" id="previewContainer"></div>
                                </div>
                                </td>
                                </tr>

                                <tr class="tr">
                                    <td class="td">리뷰내용</td>
                                    <td class="reviewtableColumns">
                                    <textarea id="reviewTextBox" class="reviewTextbox" placeholder="리뷰 내용을 입력하세요..."></textarea>
                                </td>
                                </tr>

                                <tr class="tr">
                                    <td class="td">상품평점</td>
                                    <td class="reviewtableColumns">
                                        <div>
                                        <select class="gpa" onchange="updateStars()">
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
                        <button class="AllBtn" type="submit">리뷰확인하기</button>
                    </div>
                </div>
            </div>
            </div>
            </div>
            </div>
            <div id="footer">
                <div>
                    <a href="#">고객센터 문의글 작성하기</a>
                </div>
            </div>

<script>
        // 이미지 미리보기 함수
        function addPreviewImage() {
            const previewContainer = document.getElementById('previewContainer');
            const fileInput = document.getElementById('fileinputImg');
            const file = fileInput.files[0]; // 최근 선택한 파일만 가져옴

            if (file) {
                const reader = new FileReader();
                reader.onload = function (e) {
                    const img = document.createElement('img');
                    img.src = e.target.result;
                    img.style.width = '100px';
                    img.style.height = '100px';
                    img.style.margin = '5px';
                    previewContainer.appendChild(img);
                };
                reader.readAsDataURL(file);

                // 선택된 파일 초기화하여 여러 번 추가 가능하게 함
                fileInput.value = '';
            }
        }

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
        window.onload = function() {
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