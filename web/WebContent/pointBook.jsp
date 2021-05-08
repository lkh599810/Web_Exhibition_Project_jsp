
<%@page import="dto.Point"%>
<%@page import="dao.PointDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="dao.MyTicketDAO"%>
<%@page import="dto.MyTicket"%>
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
			background-color :	#323232;
			color : white;
			font-family: "나눔고딕";
		}
		#sec{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
		}
		
		/*서브메뉴*/
		#sub_menu{
			text-align: center;
			float: left;
			margin: 80px 0;
			padding: 15px;
			width: 130px;
			
			border: 2px solid #646464;
			background-color : #3c3c3c;
			border-top:none;
			border-bottom:none;
			border-radius: 10px;
		}
		#sub_menu h3{
			color : white;
			margin: 10px 0 5px 0;
			padding: 5px 0;
			border-bottom: 2px solid black;
		}
		#sub_menu li{
			list-style-type: none;
			padding: 5px 0;
			font-size: 14px;
		}
		#sub_menu li a{
			text-decoration: none;
			color : #d2d2d2;
		}
		#sub_menu li a:hover{
			color : #CDECFA;
			font-weight: bold;
		}
		#user_info{
			margin-bottom: 30px;
		}
		#tic_info{
			margin-bottom: 10px;
		}
		
		
		/*메인메뉴*/
		#ticket{
			display:inline-block; 
			width: 780px;
		}
		
		hr{
			margin: 30px auto;
		}
		
		table{
			margin: 0px auto;
		}
		table #head{
			height: 30px;
			font-size: 17px;
			text-shadow: -1px 0 #0096ff, 0 1px #0096ff, 1px 0 #0096ff, 0 -1px #0096ff;
		}
		table td{
			padding: 5px;		
			font-size: 13px;
			padding: 20px;
			border-bottom: dotted 1px white;
		}
		.top{
			border-bottom: none;
			font-size: 18px;
			
		
		}
		#small{ font-size: 10px; margin-top: 3px;}
		
		
		#after{
			background-color : #646464;
			color : white;
			border-radius: 10px;
			width: 70px; 
			margin: 2.5px 0;
		}
		#after:hover{
			background-color: #CDECFA;
			color : black;
		}
		
	</style>
</head>
<body>

	
	<%@include file = "menu.jsp" %> 
	<section id="sec">
		<nav id="sub_menu">
			<h3>나의 정보</h3>
			<ul id="user_info">
				<li><a href="userUpdate.jsp"> ┖ 정보 수정</a></li>
				<li><a href="pointBook.jsp"> ┖ 포인트 내역 </a></li>

			</ul>
			<h3>티켓 정보</h3>
			<ul id="tic_info">
				<li><a href="myTicket.jsp"> ┖ 예매 내역 </a></li>
				<li><a href="myLike.jsp"> ┖ 나의 관심</a></li>
			</ul>
		</nav>
	
	
	<%
	if(userID==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요한 서비스입니다.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	//다오,리스트 불러오기
	
	PointDAO dao = PointDAO.getInstance();
	ArrayList<Point> pointList = dao.getPointList(userID);
	int allPoint = 0;

	for(int i =0; i<pointList.size(); i++){
		Point po = pointList.get(i);
		
		allPoint += po.getPoint();
	}
	%>
	
		<div id="ticket">
		
			<h2> 포인트 내역 </h2>
			<hr width="750">
				
					<p class="top" style="text-align:right; color : pink; padding: 25px;"><strong>총 포인트   :  <%=allPoint%> P </strong></p>				

			<table class="table table-hover">
			
				<tr id="head"> 
					<th width="150">날짜</th>
					<th width="400">적립/사용 내역</th>
					<th width="150">포인트</th>
				</tr>
				
				<%
					
					for(int i =0; i<pointList.size(); i++){
						Point po = pointList.get(i);
				%>
					<tr id="list">
						<td><%=po.getPointDate() %></td>
						<td><%=po.getPointReason() %></td>
						<td><%=po.getPoint()%> P</td>
					</tr>
				<%} %>
					
			</table>
		</div>
		
	</section>
	
		
	
</body>
</html>