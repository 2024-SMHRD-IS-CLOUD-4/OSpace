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
            <a href="mypage.html">
                <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                O'Space
            </a>
        </div>
        <div>
            <buttion type="buttion">
                <img src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                |
                <div>검색하기</div>
            </buttion>

            <div id="information">
                <span>Name님</span>
                <span><a href="#">고객센터</a></span>
            </div>
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
                <li>
                    <ul>
                        <li>중고상품 등록하기</li>
                        <li>등록상품 리스트</li>
                        <li>신고 리스트</li>
                    </ul>
                </li>
                <li>장바구니</li>
                <li>주문내역</li>
            </ul>
        </div>

        <div id="right">
            <div>
                <p>등록상품 리스트_중고</p>
            </div>

            <div>
                <table>
                    <tr>
                        <td></td>
                        <td>상품명</td>
                        <td>판매금액</td>
                        <td>작성일</td>
                        <td>판매여부</td>
                    </tr>

                    <tr>
                        <td>
                            <a>
                                <div>
                                    <img>
                                </div>
                            </a>
                        </td>
                        <td>
                            <div>
                                <a>
                                    <div>00001</div>
                                    <div>가나다라마바사아</div>
                                </a>
                            </div>
                        </td>
                        <td>
                            <p>
                            <div>50,000</div>
                            </p>
                        </td>
                        <td>
                            <p>2024.11.01</p>
                        </td>
                        <td>
                            <select onchange="update">
                                <option>판매중</option>
                                <option>판매완료</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a>
                                <div>
                                    <img>
                                </div>
                            </a>
                        </td>
                        <td>
                            <div>
                                <a>
                                    <div>00001</div>
                                    <div>가나다라마바사아</div>
                                </a>
                            </div>
                        </td>
                        <td>
                            <p>
                            <div>50,000</div>
                            </p>
                        </td>
                        <td>
                            <p>2024.11.01</p>
                        </td>
                        <td>
                            <select onchange="update">
                                <option>판매중</option>
                                <option>판매완료</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a>
                                <div>
                                    <img>
                                </div>
                            </a>
                        </td>
                        <td>
                            <div>
                                <a>
                                    <div>00001</div>
                                    <div>가나다라마바사아</div>
                                </a>
                            </div>
                        </td>
                        <td>
                            <p>
                            <div>50,000</div>
                            </p>
                        </td>
                        <td>
                            <p>2024.11.01</p>
                        </td>
                        <td>
                            <select onchange="update">
                                <option>판매중</option>
                                <option>판매완료</option>
                            </select>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <a>
                                <div>
                                    <img>
                                </div>
                            </a>
                        </td>
                        <td>
                            <div>
                                <a>
                                    <div>00001</div>
                                    <div>가나다라마바사아</div>
                                </a>
                            </div>
                        </td>
                        <td>
                            <p>
                            <div>50,000</div>
                            </p>
                        </td>
                        <td>
                            <p>2024.11.01</p>
                        </td>
                        <td>
                            <select onchange="update">
                                <option>판매중</option>
                                <option>판매완료</option>
                            </select>
                        </td>
                    </tr>
                </table>

                <div>
                    <imput>1</imput>
                    <imput>2</imput>
                    <imput>3</imput>
                    <imput>4</imput>
                    <imput>5</imput>
                </div>

                <div>
                    <input type="submit" value="저장하기">
                    <input type="submit" value="수정하기">
                    <input type="submit" value="게시글 삭제">
                </div>

                <div id="footer">
                    <div>
                        <a href="#">고객센터 문의글 작성하기</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>

</html>