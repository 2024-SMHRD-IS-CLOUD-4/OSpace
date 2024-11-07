<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MdSerch</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
<style>
#serchMD{
    display: none;
}
#serchBox{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width:80%;
    max-width: 1200px;
    height: 650px;
    overflow: hidden;
    text-align: center;
    padding: 20px;
    background: #ffffff;
}
.serchBox{
    width: 80%;
    max-width: 850;
    height: 40px;
    line-height: 40px;
    border: 1px solid #655A50;
    border-radius: 20px;
    background-color: #fdfdfd;
    margin: 140px auto 0 auto;
}
.serchBox input{
    width:85%;
    max-width: 760px;
    height:36px;
    font-size: 12pt;
    border: none;
}
.serchBox input:focus{
    outline: none;
}
#serchBox p{
    margin-top:65px;
    font-size: 14pt;
    font-weight: 500;
}
#imgSerchBox{
    display: inline-block;
    width: 330px;
    height: fit-content;
    vertical-align: middle;
    margin-top: 80px;
}
#imgSerchBox img{
    float: left;
    width:80px;
    height: 75px;
    border: 1px solid #ddd;
    margin-right: 50px;
}
.imgFileUplode {
    width: 195px;
    height: 60px;
    margin-top:8px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 10px;
    font-weight: 500;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    &:hover {
        font-weight: 800;
        border: 2px solid #655A50;
    }
  }
  
  #imgFileUplode {
    display: none;
  }
  #serchcloseBtn{
    float: right;
    font-size: 18pt;
    border: none;
    background-color: #fff;
}
</style>

</head>
	
<body>

        <div id="mdBg">
            <div id="serchBox">
                <div><button id="serchcloseBtn">X</button></div>
                <div class="serchBox">
                    <img class="btnImg" src="https://drive.google.com/thumbnail?id=1YGwz5ldBnuBScDpA2O9QqLA8hFngQqr3">
                    |
                    <input type="text" placeholder="검색어를 입력해주세요">
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
    </script>
</body>
</html>