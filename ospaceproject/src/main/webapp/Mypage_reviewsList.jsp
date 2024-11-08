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
			<div id="myPageRight">
				<h2>리뷰 리스트</h2>
					<div id="myPageContainer">
						<div>
							<table class="reviewSetupTable">
								<tr class="tr">
									<td class="td" rowspan="2">
										<input class="reviewCheckBox" type="checkbox" />
									</td>
									<td class="td" rowspan="2">
										<p>
											<img class="reviewImg">
										</p>
									</td>
									<td class="td">
										<p class="reviewName">#상품명1 #상품명2 #상품명3</p>
									</td>
									<td class="td">
										<p class="reviewStar">
											<div class="reviewStar">
												<span class="star" data-value="1">&#9733;</span>
												<span class="star" data-value="2">&#9733;</span>
												<span class="star" data-value="3">&#9733;</span>
												<span class="star" data-value="4">&#9733;</span>
												<span class="star" data-value="5">&#9733;</span>
											</div>
										</p>
									</td>
								</tr>
								<tr>
									<td class="td">
										<p class="reviewText">먹튀했어... 잡아바자ㅏㅏㅏ속상합니다</p>
									</td>
									<td class="td">
										<p class="reviewDate"> 날짜</p>
									</td>
								</tr>
							</table>
                                </div>
                            </div>
                            <div class="buttonContainer">
                                    <button class="AllBtn" type="submit">수정하기</button>
                                    <button class="AllBtn" type="submit">삭제하기</button>
                                </div>
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