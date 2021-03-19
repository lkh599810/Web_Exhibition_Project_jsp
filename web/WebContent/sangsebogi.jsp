<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>

	<style type="text/css">
	
		*{
		
			color: white;
		
		}
		
		.middlepart{
			margin:auto;
			width: 1400px;
			
		
		}
		
		.side{
			border-top:1px solid white;
		
			width:400 px;	
			height:600px;
			float:left;
			
			
		}
		
		.main{
			
			border-top:1px solid white;
			width: 800px;
			height:600px;
			float:right;
		}
		
		h1,h2{
		
			margin:10px 0 0 10px;
		}
		
		.sogae{
			margin: 30px auto;
			
			padding: 30px auto;
			letter-spacing:1.5px;
			word-spacing: px;
			line-height: 1.5;
			font-size: 20px;
			
		
		}
		.sogae1{
			margin: 10px 0px 0px 60px;
			
			padding: 30px auto;
			letter-spacing:1.5px;
			word-spacing: px;
			line-height: 1.5;
			font-size: 20px;
			
		
		}
		.yeme{
		
			background-color: white;
			color: black;
			width: 150px;
			height: 70px;
			align-content: right;
			border-radius:10px;
			font-size: 18px;
			padding:3px 3px;
			margin:50px 0px 0px 120px;
		}
		
		.yeme:hover {
		color: olive;
		background-color: aqua;
		
		}
		
	</style>

<link rel="stylesheet" href="css/bootstrap.css">
<meta http-equiv="content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>	
	<script src="js/bootstrap.js"></script>


<title>Insert title here</title>
</head>
<body>

<%@include file="menu.jsp" %> <%//메뉴에도 캐릭터셋 utf-8로 해줘야 오류안남 %>


		<div class="container">
			
			
			<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
				
				<ol class="carousel-indicators">
				
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>	
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2" ></li>
					
				</ol>
					
						<div class="carousel-inner">
						
						
						
							<div class="item active">
								<img src="images/monet1.jpg" width="100%" height="80%">
							</div>
							
							<div class="item">
								<img src="images/monet2.jpg" width="100%" height="80%">
							</div>
						
						
							<div class="item">
								<img src="images/monet3.jpg" width="100%" height="80%">
							</div>
						
						
							
							
							
						
						</div>
						
						
				<a class="left carousel-control" href="#myCarousel" data-slide="prev">
					<span class="glyphicon glyphicon-chevron-left"></span>
				</a>	
				
				<a class="right carousel-control" href="#myCarousel" data-slide="next">
					<span class="glyphicon glyphicon-chevron-right"></span>
				</a>	
				
			</div>
		
		</div>
		
		
		
		<p>
		<p>
		<br>
		
		<div align="center">
		<h1>작품정보</h1>
		</div>
		<br><br><br>
		
		
		<div class="middlepart">
		
			<aside class="side">
				<h1>모네 특별전</h1>
				<br>
				<h2>장소 </h2>
					<h2 class="sogae1">서울시 용산구 국립중앙박물관</h2>
				<h2>기간 </h2>
					<h2 class="sogae1">2020.03.12~2020.05.14</h2>
				<h2>담당부서 </h2>
					<h2 class="sogae1">서울시 용산구 국립중앙박물관</h2>
		
				
				<button class="yeme" type="button" onclick="login.jsp">예매하러 가기</button>
			</aside>
	
	
	
			<section class="main">
			
				<h1>소개</h1><p>
				<h2 class="sogae">
				국립중앙박물관은 훈민정음 반포 574주년을 맞이하여 

				테마전 '모네 특별전'을(2020.10.7.~2021.3.31.)를 개최합니다.
					
				이 전시는 국립중앙박물관이 2004년부터 편찬한 『역사자료총서』의 연구 성과를 토대로 
					
				박물관이 소장하고 있는 역사자료의 내용을 재미있게 풀어내어 
					
				청소년을 비롯한 일반 대중에게 역사에 대한 관심을 높이고자 마련하였습니다.
					
				한자나 옛 한글로 쓰여진 역사자료를 한글로 쉽게 풀어내고, 
					
				재미있는 콘텐츠와 함께하는 전시, 국립중앙박물관에서 만나보세요.
					
				</h2>
				
			</section>
		
		
		</div>
			
		
				
</body>
</html>