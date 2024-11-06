<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>

<body>
    <%@ include file="Header.jsp"%>

    <div id="Category">
        <div id="nava">
            <ul>
                <li>카테고리</li>
                <li>리뷰보기</li>
                <li>중고거래</li>
            </ul>
        </div>
    </div>

    <div id="body">
        <div id="left">
            <p>일반회원</p>
            <ul>
                <li>회원정보수정</li>
                <li>리뷰</li>
                <li>
                    <ul>
                    	<li>중고거래</li>
                        <li>중고상품 등록하기</li>
                        <li>등록상품 리스트</li>
                        <li>신고 리스트 보기</li>
                    </ul>
                </li>
                <li>장바구니</li>
                <li>주문내역</li>
            </ul>
        </div>
    </div>

    <div id="right">
        <div>
            <p>중고상품 등록하기</p>
            <table>
                <tr>
                    <td>중고상품ID</td>
                    <td>등록완료시 자동 부여</td>
                </tr>

                <tr>
                    <td>판매자ID</td>
                    <td>로그인한 판매자 ID로 자동 입력됨(변경불가)</td>
                </tr>

                <tr>
                    <td>상품명</td>
                    <td><input type="text" placeholder="상품명을 입력해주세요"></input></td>
                </tr>

                <tr>
                    <td>대표이미지</td>
                    <td><input type="file"></td>
                    <td><img aria-placeholder="대표이미지"></td>
                </tr>

                <tr>
                    <td>가격</td>
                    <td><input type="text" placeholder="상품가격을 입력해주세요"></td>
                </tr>

                <tr>
                    <td>내용</td>
                    <td><textarea placeholder="상품 판매 내용을 입력해주세요"></textarea></td>
                </tr>

                <tr>
                    <td>거래 지역</td>
                    <td><input type="text" placeholder="거래지역을 입력해주세요(ex.광주광역시 동구 00동)"></td>
                </tr>
            </table>
        </div>
        <div>
            <input type="submit" value="저장하기">
        </div>
    </div>

    	<%@ include file="Footer.jsp"%>
</body>

</html>