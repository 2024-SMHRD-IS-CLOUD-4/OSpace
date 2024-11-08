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
                	<p class="cartegoryChoise"><span><input type="radio" name="cartegoryChoise">일반상품</span><span><input type="radio"  name="cartegoryChoise">중고상품</span><span><input type="radio"  name="cartegoryChoise">리뷰</span></p>
                    <div class="serchBox">
                        <img class="btnImg"
                            src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                        |
                        <input id="serchText" type="text" onkeyup="enterkey()" placeholder="검색어를 입력해주세요">
                        <input id="serchSubmit" type="submit" value="검색하기">
                    </div>

                    <p>또는</p>
                    <p>이미지 파일을 등록해 원하는 색상으로 검색해 보세요!</p>

                    <div id="imgSerchBox">
                        <img src="">
                        <label for="imgFileUplode">
                            <div class="imgFileUplode">이미지 등록하기</div>
                        </label>
                        <input type="file" accept=".png,.jpg,.jpeg,.gif " id="imgFileUplode">
                    </div>
                </div>
                <!-- 이미지 삽입 후 나오는 페이지 -->
                <div id="serchBoxSub">
                    <div id="serchBoxSubChoise">
                        <p>원하는 색상의 부분을 드래그하여 선택해주세요.</p>
                        <img src="" alt="등록한 이미지 보여주기">
                        <div class="serchBoxSubChoiseRight">
                            <p>추출한 색상</p>
                            <div id="imgColor"></div>
                            <p>추출한 색상 RGB 결과값</p>
                        </div>
                    </div>
                    <!--<div id="serchBoxSubCheck">
                         <p>
                            <span>카테고리 선택 : </span>
                            <select name="" id="">
                                <option value="">카테고리 전체</option>
                                <option value="의자">의자</option>
                                <option value="커튼">커튼</option>
                            </select>
                        </p>
                    </div>-->
                    <button type="submit" class="AllBtn">검색하기</button>
                </div>
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
        
        function enterkey() {
        if (window.event.keyCode == 13) {
 
             // 엔터키가 눌렸을 때 실행할 내용
             login();
        };
}
    </script>
</body>
</html>