<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<style type="text/css">
	
		*{
			margin: 0;
			padding: 0;
		}
	
		body{
			background-color:black;
			width: 1000 px;	
			text-align: center;
		}
		
		#main_home{
			margin: 0px auto; 
			text-align: center;
		
		}
		
		.container1{
			
			width:90%;
			height: 500px;
			margin: 0px auto; 
			padding-top: 10px;
				
			
		}
		
		.container2{
			
			width: 900px;
			height: 500px;
			margin: 10px auto; 
				
			
		}
		
		.big{
			
			width: 79%;
			height: 400px;
			margin:auto;
			background-image: url("images/lastbookstore1.jfif");
			
			
		}
	
		p{
		color: white;	 
		
		}
		
		.description{
				
			color: white;	 
			margin: 0 0 20px 0 ;
		}
		.small1{
			
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 20px; 
			
			
		}
		
		.small2{
			
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 40px; 
			
		
		}
		
		
		.small3{
			
			margin:auto ;
			float: right;
			margin: 20px 10px 10px 20px; 
			
		
		}

		.small4{
		
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 40px; 
		
		}
		
		.small5{
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 40px; 
		
		}
		
		.small6{
			margin:auto ;
			float: right;
			margin: 20px 10px 10px 40px; 
		
		}
		
		
	</style>

	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="menu.jsp"%>
	
	
	<div id="main_home">
		<div class="container1">
			
			
			<div class="big">
			
			</div>
			
			
			<p></p>
			<p class="description">Lastbookstore 전시회입니다.</p>
			<p class="description">책에대한 관심이 사라진 현대의 모습</p>
			
		</div>
		
		
		
		<div class="container2">
		
		
			<div class="small1">
				<img alt="" src="images/monet1.jpg" id="monet1" width="250px" height="250px">
				<p>모네</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>
			</div>
			
			<div class="small2">
				<img alt="" src="images/delight1.jpg" id="delight1" width="250px" height="250px">
				<p>기쁨</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>
			</div>
			
			
			<div class="small3">
				<img alt="" src="images/pulitzer1.jpg" id="pulitzer1" width="250px" height="250px">
				<p>퓰리처</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>
			</div>
			
			<div class="small4">
				<img alt="" src="images/yumi1.jpg" id="yumi1" width="250px" height="250px">
				<p>유미의 세포들</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>
			</div>
			
			<div class="small5">
				<img alt="" src="images/teamlab1.jpg" id="teamlab1" width="250px" height="250px">
				<p>팀랩</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>
			</div>
				
	
			<div class="small6">
				<img alt="" src="images/trip1.jpg" id="trip1" width="250px" height="250px">
				<p>여행</p>
				<p> <li><a href="sangsebogi.jsp">보러가기</a></li> </p>		
	
			</div>
		</div>
		
	
	</div>


</body>
</html>