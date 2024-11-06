<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link rel="stylesheet" href="assets/css/Main.css" type="text/css" />
    <link rel="stylesheet" href="assets/css/Join.css" type="text/css" />
</head>
<body>
        <div id="mdBg">
            <div id="mdBox">
                <div><button id="closeBtn">X</button></div>
                <div class="loginBoxLogo">
                    <img src="https://drive.google.com/thumbnail?id=1BCKohuhG1uxkzJv36GL2I-cOYC_zLOoD">
                </div>
                <form action="LoginController" method="post" id="form1">
                    <div class="loginBox">
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                ID
                            </div>
                            <div class="loginBoxInput">
                                <input type="text" id="id" name="id" placeholder="아이디를 입력해주세요.">
                            </div>
                        </div>
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                PW
                            </div>
                            <div class="loginBoxInput">
                                <input type="password" id="pw" name="pw" placeholder="비밀번호를 입력해주세요.">
                            </div>
                        </div>
                    </div>
                    <div class="loginBtn">
                        <span>
                            <a href="Login.html">
                                <button type="submit" id="submit" class="AllBtn">Login </button>
                            </a>
                        </span>
                    </div>
                </form>
    
                <div id="JoinIdPwButtonBox">
                    <span>
                        <a href="Join.jsp"><button>회원가입</button></a> |
                        <a href="IdFind.html"><button>아이디 찾기</button></a> |
                        <a href="PwFind.html"><button>비밀번호 찾기</button></a>
                    </span>
                </div>
            </div>
        </div>
    <script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
    <script>
    $(document).ready(()=>{
		$('#form1').submit((event)=>{
			let id = $('#id').val();
			let pw = $('#pw').val();
			console.log(id);
			console.log(pw);
			if(id===''){
				alert('아이디 입력!')
				event.preventDefault();
				return false;
			}
			if(pw===''){
				alert('비밀번호 입력!')
				event.preventDefault();
				return false;
			}
		})
	})
	</script>
</body>
</html> 