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
            <buttion type="buttion" class="serch">
                <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                |
                <div>검색하기</div>
            </buttion>
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

    <div id="body">
        <div id="left">
            <p>일반회원</p>
            <ul>
                <li>회원정보수정</li>
                <li>리뷰</li>
                <li>중고거래</li>
                <li>장바구니</li>
                <li>주문내역</li>
            </ul>
        </div>
    </div>

    <div id="right">
        <p>회원정보수정</p>
        <br>
        <p>변경할 정보가 있으시면 작성 후 하단에 있는 "저장"버튼을 눌러주세요<br>단, 아이디는 변경하실 수 없습니다</p>

        <table>
            <tr>
                <td class="#">아이디</td>
                <td class="#">
                    <p>"로그인된 아이디 노출(변경불가)"</p>
                </td>
            </tr>

            <tr>
                <td class="#">비밀번호
                    <input class="#" placeholder="변경할 비밀번호를 입력해주세요">
                </td>
            </tr>

            <tr>
                <td class="#">이름
                    <input class="#" placeholder="사용자 이름">
                </td>
            </tr>

            <tr>
                <td class="#">주소
                    <input class="#" placeholder="로그인한 사용자의 주소 자동 입력되었음">
                </td>
            </tr>

            <tr>
                <td class="#">연락처
                    <input class="#" placeholder="로그인한 사용자의 연락처 자동 입력되었음">
                </td>
            </tr>
        </table>

        <div>
            <input type="submit" value="저장하기">
            <input type="submit" value="회원탈퇴">
        </div>
    </div>

    <div id="footer">
        <div>
            <a href="#">고객센터 문의글 작성하기</a>
        </div>
    </div>
</body>

</html>