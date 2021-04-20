<%@page import="DAO.*"%>
<%@page import="DTO.*"%>
<%@page import="java.util.*"%>
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
			background-color:	#323232;
			color: white;
			font-family: "나눔고딕";
		}
		section{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
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
		}
		#after{
			background-color : #646464;
			color : white;
			border-radius: 10px;
			width: 50px; 
		}
		#after:hover{
			background-color: #CDECFA;
			color : black;
		}
		#ticket.h2{
			margin-top: 15px;
			margin-bottom: 15px;
			font-size: 22px;
		}
		.tr td{
			font-size: 13px;
			padding: 20px;
			border-bottom: dotted 1px white;
		}	
		.registerlink{
		
			font-size:17px;
			float: right;
			margin-right:25px;
			color: pink;
			
		}
		
		
	</style>
	<script type="text/javascript">
								
		
					function button_event(exNum){
					if (confirm("정말 삭제하시겠습니까??")){    //확인
					
						location.href="exhibition_deleteaction.jsp?exNum="+exNum;
				
					}else{   //취소
					    return;
					}
					}
				
					
					
		</script>
</head>
<body>


	<%@include file = "menu.jsp" %> 
	
	<%
		ExhibitionDAO dao=ExhibitionDAO.getinstance();
		
		ArrayList<Exhibition> exlist=dao.getallexhibition();
	
	%>
	
	
	<section>

		<div class="container" id="ticket">

			<h2 class="h2">
					 &nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 
							  전시회 목록
					  <a class="registerlink" href="exhibition_reg.jsp"><button id = "after">전시회 등록</button></a>
					   
			 </h2>
		
			<hr width="750">

			<table class="table table-hover">

				<tr id="head"> 
					<th width="145">전시회 명</th>
					<th width="245">전시기간</th>
					<th width="100">상태</th>
				</tr>

				
				<%for(int i=0; i<exlist.size();i++){
					
					Exhibition exhibition=exlist.get(i);	
					
				%>
	
				
				<tr class="tr">
					<td><%=exhibition.getExName()%></td>
					<td><%=exhibition.getExStart() %> ~ <%=exhibition.getExEnd() %></td>
					<td><%=exhibition.getExCondition() %></td>
					<%//사용 후 후기 미작성 시 %>
					<td><a href="exhibition_modify.jsp?exNum=<%=exhibition.getExNum()%>"><button id="after">수정</button></a></td>
					<td>					
					
					<button id="after" onclick="button_event('<%=exhibition.getExNum()%>')">삭제</button>
					</td>
				</tr>
				
				<%} %>
			
			</table>
		</div>
	</section>
</body>
</html>