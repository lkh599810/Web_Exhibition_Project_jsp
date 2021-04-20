<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="dto.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style type="text/css"> 
	
*{
 	margin:0;
 	padding: 0;
 }
		body{
			background-color :	#000000;
			color : white;
		}
		
		
		/* 전시회 더보기 */
		#moreEx{
			padding : 5px;
			width: 1010px;
			height: auto;
			margin: 20px auto;
			overflow: hidden;
		}
		#moreEx li{
			float :left;
			margin: 30px 5px 40px 0;
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
</head>
<body>

	
	<%@include file = "/menu.jsp" %> 
	
	<div id="moreEx">
			<ul>
				<%
				 //현재 날짜
			    SimpleDateFormat format1 = new SimpleDateFormat ("yyyyMMdd");
			    Date time = new Date();
			    int today = Integer.valueOf(format1.format(time));
			    
			    
					ExhibitionDAO dao=ExhibitionDAO.getinstance(); 
					
					ArrayList<Exhibition> exlist=dao.getallexhibition();
			
					for(int i=0; i<exlist.size(); i++){
						Exhibition exhibition= exlist.get(i);

						String year1= exhibition.getExStart().substring(0, 4);
						String month1= exhibition.getExStart().substring(5,7);
						String day1= exhibition.getExStart().substring(8,10);
						int exStart = Integer.valueOf(year1+month1+day1);  //전시회 시작기간
					
						if(exStart>today){ // 진행 예정%>
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
						<%}
					} %>
				
			 </ul> 

		</div>
	
	<%@include file="/footer.jsp"%>
</body>
</html>