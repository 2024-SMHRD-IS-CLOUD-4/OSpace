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
<%

%>
        <div id="mdBg">
            <div id="serchBox">
                <div><button id="serchcloseBtn">X</button></div>
                <div class="serchBox">
                    <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                    |
                    <input id="serchText" type="text" onkeyup="enterkey()" placeholder="검색어를 입력해주세요">
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