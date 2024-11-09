<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>O'Space</title>
<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
<link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
<link rel="stylesheet" href="assets/css/MyPage.css" type="text/css" />
<style type="text/css">

</style>
</head>

<body>
	<%@ include file="Header.jsp"%>
	<div id="body">
		<div id="serchBoxSub">
			<div id="serchBoxSubChoise">
				<canvas id="canvas"></canvas>
				<div>
					<label for="imgFileUplode">
						<div class="imgFileUplode">이미지 등록하기</div>
					</label>
					<input type="file" accept=".png,.jpg,.jpeg,.gif " id="imgFileUplode">
				</div>
				<div class="serchBoxSubChoiseRight">
					<p>추출한 색상</p>
					<div id="imgColor">
						<canvas id="canvas" width="70" height="70" style="max-width: 70px; max-height: 70px;"></canvas>
						<div id="colorOutput">
							<span id="colorText"></span>
							<div id="colorPreview"></div>
						</div>
					</div>
					<p id="colorText">추출한 색상 RGB 결과값</p>
				</div>
			</div>
			<div id="serchBoxSubCheck">
				<p>
					<span>카테고리 선택 : </span>
					<select name="" id="">
						<option value="">카테고리 전체</option>
						<option value="의자">의자</option>
						<option value="커튼">커튼</option>
					</select>
				</p>
			</div>
			<button type="submit" class="AllBtn">검색하기</button>
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