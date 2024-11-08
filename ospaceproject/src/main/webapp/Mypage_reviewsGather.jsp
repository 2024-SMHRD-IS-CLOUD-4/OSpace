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
                <%@ include file="MyPageLeft.jsp"%>
                
                <div id="myPageRight">
                <h2>
                    상품등록하기
                </h2>
                <div id="myPageContainer">
                    <div>
                    	<table>
                        <tr>
                            <td>
                                <a>
                                    <img>
                                </a>
                            </td>
                            <td>
                                <div>
                                    <a>#상품명1 #상품명2 #상품명3</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <a>먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <div>
                                        <p> 별점가져오기 </p>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a>
                                    <img>
                                </a>
                            </td>
                            <td>
                                <div>
                                    <a>#상품명1 #상품명2 #상품명3</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <a>먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <div>
                                        <p> 별점가져오기 </p>
                                    </div>
                                </div>
                            </td>
                        </tr>

                        <tr>
                            <td>
                                <a>
                                    <img>
                                </a>
                            </td>
                            <td>
                                <div>
                                    <a>#상품명1 #상품명2 #상품명3</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <a>먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</a>
                                </div>
                            </td>
                            <td>
                                <div>
                                    <div>
                                        <p> 별점가져오기 </p>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
                <div class="buttonContainer">
                    <button class="AllBtn" type="submit">저장하기</button>
                    <button class="AllBtn" type="submit">수정하기</button>
                    <button class="AllBtn" type="submit">삭제하기</button>
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

</body>

</html>