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
                <form action="LoginController" method="post">
                    <div class="loginBox">
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                ID
                            </div>
                            <div class="loginBoxInput">
                                <input type="text" name="id" placeholder="아이디를 입력해주세요.">
                            </div>
                        </div>
                        <div class="loginBoxRow">
                            <div class="loginBoxIdPw">
                                PW
                            </div>
                            <div class="loginBoxInput">
                                <input type="password" name="pw" placeholder="비밀번호를 입력해주세요.">
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
    <script>
		$("#submit").on("click", ()=>{
					// 버튼이 클릭되면
					// 사용자가 입력한 아이디 가져오기
					let inputId = $("#id").val();
					// 아이디가 DB 안에 있는지 => 서버통신(동기/비동기)
					// 결과가 SPAN에 출력
					$.ajax({
						url : "users/exists", // 요청 경로 -> 상대 경로는 앞에 '/' 생략
						type : "get", // 요청 방식 (get,post)
						data : {"input":inputId}, // 요청 데이터 (json{key:value,~})
						success : (data)=>{
							console.log(data);
							if(data==="true"){ // 사용 불가능 아이디
								$("#idCheckResult").text("사용 불가 아이디");
							}else{
								$("#idCheckResult").text("사용 가능 아이디");
							}
						},
						error : () => { // 통신 실패
							alert("통신실패");
						}
					})
					
				})
	</script>
</body>
</html> 