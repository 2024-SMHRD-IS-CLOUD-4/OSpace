<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <div id="header">
        <div id="logo">
            <a href="MyMypage.html">
                <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                O'Space
            </a>
        </div>
        <div id="serch">
            <button type="button" class="serch">
                <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                |
                <div>검색하기</div>
            </button>
        </div>
        <div id="login">
            <span>로그인</span>
            <span><a href="#">고객센터</a></span>
        </div>
        <div id="information">
            <span>Name님</span>
            <span><a href="#">고객센터</a></span>
        </div>
    </div>

    <div id="Category">
        <div id="nava">
            <ul>
                <li>카테고리</li>
                <li>리뷰보기</li>
                <li>중고거래</li>
            </ul>
        </div>
    </div>

    <div id="container"> 
    	<jsp:include page="Myleft.jsp" />
        
        <div id="right">
            <div>
                <p>리뷰 작성하기</p>
            </div>

            <div>
                <table>
                    <tr>
                        <td class="#">리뷰번호</td>
                        <td class="#">저장 후 자동으로 번호 생성</td>
                    </tr>

                    <tr>
                        <td id="#">작성자</td>
                        <td id="#">작성자 닉네임</td>
                    </tr>

                    <tr>
                        <td>리뷰상품</td>
                        <td><input type="file" id="fileInput">상품찾기</td>

                    </tr>

                    <tr>
                        <td>이미지</td>
                        <td><input type="file" id="fileInput">파일찾기</td>
                    </tr>

                    <tr>
                        <td>리뷰내용</td>
                        <td><textarea id="textBox"></textarea></td>
                    </tr>

                    <tr>
                        <td>상품평점</td>
                        <td>
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

                    <tr>
                        <td>작성일자</td>
                        <td>
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

    <div id="footer">
        <div>
            <a href="#">고객센터 문의글 작성하기</a>
        </div>
    </div>


</body>

</html>