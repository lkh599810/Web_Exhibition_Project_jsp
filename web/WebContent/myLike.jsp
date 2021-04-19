<%@page import="DTO.Exhibition"%>
<%@page import="DAO.ExhibitionDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.LikeDAO"%>
<%@page import="DTO.Like"%>
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
		section{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
		}
		
		<%//서브메뉴%>
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
		 
		
		<%//메인메뉴%>
		#like{ 
			display:inline-block; 
			width: 780px;
		}
		hr{
			margin: 30px auto;
			}
		table{
			margin: 0 auto;
		}
		input.img-button {
	        background: url("images/likecancel.jpg" ) no-repeat;
	        border: none;
	        width: 32px; 
	        height: 32px;
	        cursor: pointer;
      }
      
      a.titlelink{
      
      	color: aqua;
      }
		
	</style>
	
	
	
	
	
	<script type="text/javascript">
	
		function like_Cancel(likeUserID, exNum) {
			
			if(confirm("찜목록에서 삭제 하시겠습니까?")){
			
			document.location.href=document.location.href="likeCancel.jsp?likeUserID="+likeUserID+"&exNum="+exNum;
			
			}else{
				
				return;
				
			}
			
		
		}
	
	
	
	</script>
	
</head>
<body>

	
	<%@include file = "menu.jsp" %> 
	
	<%
		request.getParameter("UTF-8");
		String likeUserID=(String)session.getAttribute("userID");
		
			
		
	
		LikeDAO likedao=LikeDAO.getinstance();
		
		ArrayList<Like> likelist = likedao.getalllike(likeUserID);
		
	
		
	%>
	
	
	
	<section>
		<nav id="sub_menu">
			<h3>회원정보</h3>
			<ul id="user_info">
				<li><a href="userUpdate.jsp"> ┖ 회원수정</a></li>
				<li><a href="userDelete.jsp"> ┖ 회원탈퇴</a></li>
			</ul>
			<h3>티켓정보</h3>
			<ul id="tic_info">
				<li><a href="myTicket.jsp"> ┖ 나의 티켓 </a></li>
				<li><a href="myLike.jsp"> ┖ 나의 관심</a></li>
			</ul>
		</nav>
	
		<div class="container" id="like">
		
			<h2>나의 관심</h2>
			<hr width="750">
			
			<table class="table table-hover">
				<tr id="head"> 
					<th width="180">전시회 명</th>
					<th width="250">전시 기간</th>
					<th width="90">전시</th>
					<th width="90">관심설정</th>
				</tr>
				
				<%
				
				
					for(int i=0; i<likelist.size() ; i++){
						
					Like like=likelist.get(i);
					
					
					int exNum=like.getLikeExNum();
					ExhibitionDAO dao=ExhibitionDAO.getinstance();
					Exhibition exhibition=dao.getexhibition(exNum);
					
					if(likelist.get(i).getLikeCondition()==1){
			
					%>
					
				<tr>
					<td><a href="sangsebogi.jsp?exNum=<%=exhibition.getExNum()%>" class="titlelink"><%=exhibition.getExName() %></a></td>
					<td><%=exhibition.getExStart() %> ~ <%=exhibition.getExEnd() %></td>
					<td><%=exhibition.getExCondition() %></td>
				
					<th><input type="button" class="img-button" onclick="like_Cancel('<%=likeUserID %>','<%=exNum %>')" > </th>	
				</tr>
				
				<%}else{ %>
				<tr>
					<td></td>
					<td></td>
					<td></td>
				
					<th></th>	
				</tr>
				
					
				
				
				<%		}
					
					} 
				
				%>
				
			</table>
		</div>
		
	</section>
	
		
	
</body>
</html>