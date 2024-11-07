<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            <div>
                <h2>리뷰 작성하기</h2><br>
                <%@ include file="line.jsp" %> <br>
           

            <div>
            	<div class="reviewtable-container">
                	<table class="review-table">
                    	<tr class="tr">
                       		 <td class="td">리뷰번호</td>
                       		 <td class="#">저장 후 자동으로 번호 생성</td>
                   		 </tr>

                    <tr class="tr">
                        <td class="td">작성자</td>
                        <td class="reviewtable-columns">작성자 닉네임</td>
                    </tr>

                    <tr class="tr">
                        <td class="td">리뷰상품</td>
                        <td class="reviewtable-columns">
                        <label class="file-label" for="fileinput-review">상품찾기</label>
                        <input type="file" id="fileinput-review" class="fileinput-review" onchange="displayFileName()"></td>
					</tr>

                    <tr class="tr">
                        <td class="td">이미지</td>
                        <td class="reviewtable-columns">
                        <label class="file-label" for="fileinput-img">파일찾기</label>
                        <input type="file" id="fileinput-img" class="fileinput-img" onchange="displayFileName()"></td>
					</tr>

                    <tr class="tr">
                        <td class="td">리뷰내용</td>
                        <td class="reviewtable-columns"><textarea id="textBox"></textarea></td>
                    </tr>

                    <tr class="tr">
                        <td class="td">상품평점</td>
                        <td class="reviewtable-columns">
                            <select onchange="updateStars()">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                                <option>4</option>
                                <option>5</option>
                            </select>

                            <div>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                                <span>★</span>
                            </div>
                        </td>
                    </tr>

                    <tr  class="tr">
                        <td class="td">작성일자</td>
                        <td class="reviewtable-columns">
                            <input type="date">
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <input type="submit" value="저장하기">
                <input type="submit" value="리뷰확인하기">
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


</body>

</html>