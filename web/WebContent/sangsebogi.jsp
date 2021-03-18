<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>

	<style type="text/css">
	
		*{
		
			color: white;
		
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
		
		
		<div class="container">
			<div class="text-center">
				<h1> 작품정보 </h1>
			</div>
		</div>
		
		
		
		
		
		
		
		
		<div class="container">
		
			<div class="row" align="left">
			
				<ul>
				
				<li> <h2>작품명 : 모네의아침</h2> </li>
				<br>
				<li> <h2>소개 : 모네가 죽기전 디자인한 마지막 작품들을 모아놓은 특별전시회</h2> </li>
				<br>
				<li> <h2>오시는 길 : 서울시 서대문구 창천로 113-223</h2> </li>
				<br>
				<li> <h2>기간 : 2020.03.29~2021.12.13</h2> </li>
				<br>
				</ul>
				
			
				
			
			
			</div>
		
		</div>
			
		<%@include file = "footer.jsp" %>		<%// 해당 페이지 포함 %>
		<%// js소스 소스추가 %>
				
</body>
</html>