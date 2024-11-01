<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#head{
position:absolute;
width: 203px;
height: 36px;
top: 245px;
left: 476px;
gap: 0px;
opacity: 0px;

}
#img1{
position:absolute;
width: 200px;
height: 280px;
top: 314px;
left: 460px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;
	
}
#img2{
position:absolute;
width: 200px;
height: 280px;
top: 314px;
left: 727px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img3{
position:absolute;
width: 200px;
height: 280px;
top: 314px;
left: 994px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img4{
position:absolute;
width: 200px;
height: 280px;
top: 314px;
left: 1261px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img5{
position:absolute;
width: 200px;
height: 280px;
top: 617px;
left: 460px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img6{
position:absolute;
width: 200px;
height: 280px;
top: 617px;
left: 727px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img7{
position:absolute;
width: 200px;
height: 280px;
top: 617px;
left: 994px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
#img8{
position:absolute;
width: 200px;
height: 280px;
top: 617px;
left: 1261px;
gap: 0px;
border-radius: 20px 0px 0px 0px;
border: 1px 0px 0px 0px;
opacity: 0px;

}
</style>
</head>
<body>
	<%
		String category_name = "asd";
		String product_id = "id";
		String product_name = "name";
		int price = 123;
	%>
	<div id="head"><h2>카테고리 > <%= category_name %></h2></div>
	<div id="img1"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img2"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img3"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img4"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img5"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img6"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img7"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>
	<div id="img8"><img src="#"><br><%= product_id %><br><%= product_name %><br><%= price %></div>

</body>
</html>