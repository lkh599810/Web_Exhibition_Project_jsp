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
			
		
			
			
		}
		
		
		.seemore{
		
			background-image:url(images/lastbookstore1.jfif);
			
			
		
		}
	
		p{
		color: white;	 
		
		}
		
		.other{ /*ohter Exhibitions의 "div" */
			
			border-bottom: 1px solid white thick; 	
			color: white;	 
			margin: 30px auto 15px auto ;
		 	
		
			
			  
			width: 400px;    
		  	
		  	
		}
		
		h1.otherexhibition{
			
			
			
			font-family: fantasy;
			font-size: 40px;
			border-bottom: 3px solid white;    
			padding: auto;    
		}
		  
		
		
		.description{
		
			font-family:mono-space;
		
		}
		
		
		.small1{
			
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 20px; 
			
			
		}
		
		.small2{
			
			margin:auto ;
			float: left;
			margin: 20px 10px 10px 45px; 
			
		
		}
		
		
		.small3{
			
			margin:auto ;
			float: right;
			margin: 20px 10px 10px 20px; 
			
		
		}

		.small4{ /*유미*/
		
		
			float: left;
			margin: 30px 10px 10px 20px; 
		
		} 
		
		.small5{
			margin:auto ;
			float: left;   
			margin: 30px 10px 10px 48px; 
		
		}
		
		.small6{
			margin:auto ;
			float: right;
			margin: 30px 10px 10px 40px; 
		
		}
		
		
	</style>

	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="menu.jsp"%>
	
	
	<div id="main_home">
		
		<div class="container1">
			
			<a href="sangsebogi.jsp">
			<div class="big" 
			 style=" background-image:url(images/lastbookstore1.jfif);
			 width: 79%; height: 400px; margin: auto;">
			
			  	
				
			</div>
			
			</a>
		
		</div>
		
		
		<br><br>
		
		<div class="other">	
			<p>
			<h1 class="otherexhibition">More &nbsp; Exhibitions</h1>  
		</div>
			
		
		
		<br>
		
		<div class="container2">
		
		
			<div class="small1">
			
			<a href="sangsebogi.jsp">
				<img alt="" src="images/monet1.jpg" id="monet1" width="250px" height="250px">
			</a>	
				<p class="description"  >Monet and the Impressionists</p>
				
			</div>
			
			<div class="small2">
			
			<a href="sangsebogi.jsp">
				<img alt="" src="images/delight1.jpg" id="delight1" width="250px" height="250px">
			</a>	
				<p class="description"  >The Delight</p>
				
			</div>
			
			
			<div class="small3">
				<a href="sangsebogi.jsp">
				<img alt="" src="images/pulitzer1.jpg" id="pulitzer1" width="250px" height="250px">
				</a>
				<p class="description"  >Pulitzer prize 2021</p>
			</div>
			
			
			<div class="small4">
			<a href="sangsebogi.jsp">
				<img alt="" src="images/yumi1.jpg" id="yumi1" width="250px" height="250px">
			</a>
				<p class="description" style="font-family: mono-space;">Yumi's cells</p>
			</div>
			
			<div class="small5">
				<a href="sangsebogi.jsp">
					<img alt="" src="images/teamlab1.jpg" id="teamlab1" width="250px" height="250px">
				</a>
					<p class="description"  >The Team Lab</p> 
				
			</div>
				
	
			<div class="small6">
				<a href="sangsebogi.jsp">
					<img alt="" src="images/trip1.jpg" id="trip1" width="250px" height="250px">
					
				</a>
					<p class="description"  >The Last Trip</p> 
	
			</div>   
		</div>
		
	
	</div>



</body>
</html>