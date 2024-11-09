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
	                	<p class="cartegoryChoise"><span><input type="radio" name="type" value="common">일반상품</span><span><input type="radio" name="type" value="used">중고상품</span><span><input type="radio" name="type" value="review">리뷰</span></p>
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
	                        <span class="imgFileUplode">이미지 등록하기</span>
	                    </label>
	                    <!-- <a href="MdSerchImg.jsp"></a> --><input type="file" accept="image/*" id="fileInput">
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
<script>
		let r = 0, g = 0, b = 0;
        const fileInput = document.getElementById('fileInput');
        const canvas = document.getElementById('canvas');
        const ctx = canvas.getContext('2d');
        const colorText = document.getElementById('colorText');
        const colorPreview = document.getElementById('colorPreview');
        const MAX_WIDTH = 330;
        const MAX_HEIGHT = 330;
        let isDragging = false;
        let startX = 0;
        let startY = 0;
        let img = null; // 초기값 설정

        // 이미지 업로드 이벤트 처리
        fileInput.addEventListener('change', (event) => {
            const file = event.target.files[0];
            if (file) {
                const reader = new FileReader();
                reader.onload = (e) => {
                    img = new Image();
                    img.onload = () => {
                        let width = img.width;
                        let height = img.height;

                        // 비율을 유지하면서 최대 크기를 조정
                        if (width > MAX_WIDTH) {
                            height = height * (MAX_WIDTH / width);
                            width = MAX_WIDTH;
                        }
                        if (height > MAX_HEIGHT) {
                            width = width * (MAX_HEIGHT / height);
                            height = MAX_HEIGHT;
                        }

                        // canvas 크기 설정
                        canvas.width = width;
                        canvas.height = height;

                        // 이미지 그리기
                        ctx.clearRect(0, 0, canvas.width, canvas.height);
                        ctx.drawImage(img, 0, 0, width, height);
                    };
                    img.src = e.target.result;
                };
                reader.readAsDataURL(file);
            } else {
                console.error("파일이 선택되지 않았습니다.");
            }
        });

        // 드래그 이벤트 방지 및 처리 코드 추가
        canvas.addEventListener('dragstart', (e) => {
            e.preventDefault();
        });

        canvas.addEventListener('dragover', (e) => {
            e.preventDefault();
        });

        canvas.addEventListener('drop', (e) => {
            e.preventDefault();
            console.warn("드래그 앤 드롭 이벤트는 canvas에서 처리되지 않습니다.");
        });

        // 드래그 시작 이벤트
        canvas.addEventListener('mousedown', (e) => {
            if (img) { // 이미지가 로드된 경우에만 드래그 가능
                isDragging = true;
                startX = e.offsetX;
                startY = e.offsetY;
            }
        });

        // 드래그 중 이벤트 (사각형 그리기)
        canvas.addEventListener('mousemove', (e) => {
            if (isDragging) {
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                ctx.drawImage(img, 0, 0, canvas.width, canvas.height); // 원본 이미지를 다시 그림
                ctx.strokeStyle = 'red';
                ctx.lineWidth = 1;
                ctx.strokeRect(startX, startY, e.offsetX - startX, e.offsetY - startY);
            }
        });

        // 드래그 종료 이벤트
        canvas.addEventListener('mouseup', (e) => {
            if (isDragging) {
                isDragging = false;
                
             // RGB 값을 계산하기 전에 초기화
                r = 0; 
                g = 0; 
                b = 0;

                // 드래그 끝 좌표와 크기 계산
                let width = e.offsetX - startX;
                let height = e.offsetY - startY;

                // 음수 너비/높이 처리 (왼쪽/위로 드래그할 때)
                if (width < 0) {
                    startX = startX + width;
                    width = Math.abs(width);
                }
                if (height < 0) {
                    startY = startY + height;
                    height = Math.abs(height);
                }

                // canvas 경계 내에서만 처리
                if (startX + width <= canvas.width && startY + height <= canvas.height) {
                    
                	// 원본 이미지를 다시 그려서 빨간색 테두리를 제거
                    ctx.clearRect(0, 0, canvas.width, canvas.height);
                    ctx.drawImage(img, 0, 0, canvas.width, canvas.height);
                	
                    // 선택 영역의 이미지 데이터 가져오기
                	const imageData = ctx.getImageData(startX, startY, width, height);
                    const data = imageData.data;
                    const numPixels = data.length / 4;

                    for (let i = 0; i < data.length; i += 4) {
                        r += data[i];     // Red
                        g += data[i + 1]; // Green
                        b += data[i + 2]; // Blue
                    }

                    r = Math.floor(r / numPixels);
                    g = Math.floor(g / numPixels);
                    b = Math.floor(b / numPixels);

                    colorText.innerText = `Average Color (RGB): (${r}, ${g}, ${b})`;
                    colorPreview.style.backgroundColor = `rgb(${r}, ${g}, ${b})`;

                    console.log(r);
                    console.log(g);
                    console.log(b);
                } else {
                    console.warn("선택한 영역이 canvas 경계를 초과했습니다.");
                }
            }
        });
        
       

    </script>
</body>
</html>