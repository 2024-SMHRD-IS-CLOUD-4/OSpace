<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Insert title here</title>
        <link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
        <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
        <link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
		<link rel="stylesheet" href="assets/css/ShoppingBasket.css" type="text/css" />
		
    </head>

    <body>

        <body>
        <%@ include file="Header.jsp" %>
            <div id="body">
                <div id="MyPageBox">
                    <%@ include file="MyPageLeft.jsp" %>

                        <div id="myPageRight">
                            <h2>장바구니</h2>
                            <div id="myPageContainer">
                                <div>
                                    <div>
                                    	<table class="baskettable">
                                    		<tr>
                                    			<td rowspan="2">
                                    				<input class="basketCheckbox" type="checkbox">
                                    			</td>
                                    			<td rowspan="2">
                                    				<img class="basketImg">
                                    			</td>
                                    			<td>
                                    				<p class="baskName">000001</p>
                                    			</td>
                                    			<td rowspan="2">
                                   				  <div class="baskcolorContainer">
                                    				 <div class="baskcolorBox"></div>
                                    				 <div class="baskcolname">빨간색</div>
                                    			</td>
                                    			<td class="tdbasketprice" rowspan="2">
                                    				<p>50,000원</p>
                                    			</td>	
                                    		</tr>
                                    		<tr>
                                    			<td class="td">
                                    				<p class="basktext">가나다라바상aaaaaaaa</p>
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