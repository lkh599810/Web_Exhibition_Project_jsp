<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<style type="text/css">
	
		*{
			background-color:black;
			width: 1000 px;	
			text-align: center;
			
			
		}
	
		body{
			
		
		}
		
		.container1{
			
			
			width:90%;
			height: 500px;
			margin: 10px auto; 
				
			
		}
		
		.container2{
			
			width:900px;
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
		
		
	</style>

	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="menu.jsp" %>
	
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
			<p>전시회1</p>
		</div>
		
		<div class="small2">
			<img alt="" src="images/monet2.jpg" id="monet2" width="250px" height="250px">
			<p>전시회2</p>
		</div>
		
		
		<div class="small3">
			<img alt="" src="images/pulitzer1.jpg" id="pulitzer" width="250px" height="250px">
			<p>전시회3</p>
		</div>
		
		<div class="small3">
			<img alt="" src="images/pulitzer1.jpg" id="pulitzer" width="250px" height="250px">
			<p>전시회2</p>
		</div>
		
		<div class="small3">
			<img alt="" src="images/pulitzer1.jpg" id="pulitzer" width="250px" height="250px">
			<p>전시회2</p>
		</div>
			

		<div class="small1">
			<img alt="" src="images/monet1.jpg" id="monet1" width="250px" height="250px">
			<p>전시회2</p>		
		</div>		
	
		
	</div>
	
	<%@include file="footer.jsp" %>

</body>
</html>