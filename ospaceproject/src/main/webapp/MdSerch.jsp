<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MdSerch</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
<div id="mdBg">

           <div id="serchBox">
                <div><button id="serchcloseBtn">X</button></div>
                <div id="serchBoxMain">
					<form action="TextSeachController">
	                	<p class="cartegoryChoise"><span><input type="radio" name="type" value="common" checked="checked">일반상품</span><span><input type="radio" name="type" value="used">중고상품</span><span><input type="radio" name="type" value="review">리뷰</span></p>
	                    <div class="serchBox">
	                        <img class="btnImg"
	                            src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
	                        |
	                        <input id="serchText" name="searchText" type="text" onkeyup="enterkey()" placeholder="검색어를 입력해주세요">
	                        <input id="serchSubmit" type="submit" value="검색하기">
	                    </div>
					</form>
	
	
	                <div id="imgSerchBox">
	                    <canvas id="canvas"></canvas>
	                    <label for="fileInput">
	                        <a href="MdSerchImg.jsp"><span class="imgFileUplode">이미지 등록하기</span></a>
	                    </label>
	                    <input type="button" id="fileInput">
	                </div>
                </div>
                <!-- 이미지 삽입 후 나오는 페이지 
                <div id="serchBoxSub">
                    <div id="serchBoxSubChoise">

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
                </div>-->
                
            </div>
</div>
	<script>
		
	    const serchOpen = () => {
	        document.getElementById("serchMD").style.display = "block";
	    }
	    const serchClose = () => {
	        document.getElementById("serchMD").style.display = "none";
	        
	    }
	
	    document.getElementById("serch").addEventListener("click", serchOpen)
	    document.getElementById("serchcloseBtn").addEventListener("click", serchClose)
	    
	</script>
</body>
</html>