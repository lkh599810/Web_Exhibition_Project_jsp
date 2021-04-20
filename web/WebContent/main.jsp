<%@page import="DTO.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.*"%>
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
			margin: 30px auto ;
		 	
		
			
			  
			width: 400px;    
		  	
		  	
		}
		
		h1.otherexhibition{
			
			
			
			font-family: fantasy;
			font-size: 40px;
			border-bottom: 3px solid white;  
			margin-right:100px;  
			padding: auto;    
		}
		/* 전시회 더보기 */
		#moreEx{
			padding : 5px;
			width: 1010px;
			height:auto;
			margin: 20px auto;
		}
		#moreEx li{
			float :left;
			margin: 0 5px 40px 0;
			width: 500px;
			height: 300px;
		}
		#moreEx a{
			text-decoration: none;
			color: white;
		}
		#moreEx a h2:hover{
			text-decoration:underline;
			color: white;
		}
		#moreEx img{
			float : left;
			height: 280px;
			width: 280px;
			border-radius: 10px;
			margin-right: 15px;
			background-color: rgba(20,20,20,0.8);
			opacity: 1;
		}
		#moreEx img:hover{
			opacity: 0.8;
		}
		#moreEx-item{
			padding: 10px;
			text-align: left;
		}
		.logoP{
			margin-bottom: 10px;
			color : #148CFF;
		}
		.period{
			padding-top:20px;	
			font-size: 12px;
		}
		
		
		
		
	</style>

	
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%@include file="menu.jsp"%>
	
	
	<%
	
		ExhibitionDAO dao=ExhibitionDAO.getinstance(); 
		
		ArrayList<Exhibition> exlist=dao.getallexhibition();
	
		
	
	%>
	
	
	<div id="main_home">
		
		<div class="container1">
			
		
			
			
			<div class="big" style=" background-image:url(images/lastbookstore1.jfif); width: 79%; height: 400px; margin: auto;">
			
				
			</div>
			
			
		
		</div>
		
		
		<br><br>
		
		<div class="other">	
			<p>
			<h1 class="otherexhibition">More &nbsp; Exhibitions</h1>  
		</div>
			
		
		
		<br>
		
		<div id="moreEx">
			<ul>
				<%
				
				
					for(int i=0; i<exlist.size(); i++){
						Exhibition exhibition= exlist.get(i);
			
				%>
				
				<li>
					<a href="sangsebogi.jsp?exNum=<%=exhibition.getExNum()%>">
							<figure> <img alt="" src="images/<%=exhibition.getExPost() %>" > </figure>
						<div id="moreEx-item">
							<p class="logoP">All Ex</p>
							<h2><%=exhibition.getExName() %></h2>
							<p class="period"> <%=exhibition.getExStart() %> ~ <%=exhibition.getExEnd() %> </p>
								
						</div>
					</a>
				</li>
				
				<%} %>
				
			 </ul> 
		
		
		</div>
		
	
	</div>
	<%@include file="footer.jsp"%>

</body>
</html>