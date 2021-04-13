<%@page import="DTO.Exhibition"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ExhibitionDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link rel="stylesheet" href="css/bootstrap.css">
<meta http-equiv="content-Type" content="text/html" charset="UTF-8">
<meta name="viewport" content="width=device-width initial-scale=1">

   <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>   
   <script src="js/bootstrap.js"></script>


<title>Insert title here</title>
   <style type="text/css"> 
   
*{
    margin:0;
    padding: 0;
         background-color : #000000;
 }
      body{
         background-color : #000000;
         color : white;
         font-family: "나눔고딕";
      }
      section{
          width: 1000px;
          margin: 50px auto;
         padding: 0px 20px;
      }
      section input{
      	padding: 1px 5px;
      	margin-bottom: 15px 0;
      }
      
      .posterinfo{
      	border-top: 1px solid pink; 
      
      }
      
      
      /*포스터*/
      #exPoster{
         text-align: center;
         float: left;
         margin: 40px 0 40px 40px;
         padding: 15px;
         width: 400px;
         height: 350px;
         border: 1px solid #CDECFA;
         border-radius: 10px;
         
      }
     #exPost{
      	margin: 0 auto;
      }
      
      /*정보*/
      #info{
         float: right;
         margin: 40px 40px 40px 0;
         padding: 15px 30px;
         width: 450px;
         height: 350px;
         border: 1px solid #CDECFA;
         border-radius: 10px;
      }
      
      /*내용*/
      #exContent{
         text-align: center;
         margin: 30px auto;
         padding: 15px;
      }
      textarea{
      	 padding:20px;
         border: 1px solid #CDECFA;
         border-radius: 10px;
      }
      
      /*캐러셀 이미지*/
      #potos{
         text-align: center;
         margin: 40px auto;
         padding: 15px;
         border: 1px solid #CDECFA;
         border-radius: 10px;
         width: 130;
      }
 	#exPoto1,#exPoto2, #exPoto3{
      	margin: 0 auto;
      }
      
      
     .addbutton{
     
     	margin-left: 400px;
     } 
      
     
     /*전시회넘버 칸*/ 
     .junsinum{
     	margin-top:0;
     
     } 
      
   </style>
</head>
<body>

   
	<%@include file = "menu.jsp" %> 
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		int exNum= Integer.parseInt(request.getParameter("exNum"));
			
		ExhibitionDAO dao=ExhibitionDAO.getinstance();
		Exhibition exhibition=dao.getexhibition(exNum);
	
	%>



	<form method="post" enctype="multipart/form-data"
		action="exhibition_modifyaction.jsp?exNum=<%=exhibition.getExNum()%>">
		<section>


			<div class="posterinfo">

				<div id="exPoster">
					<label>포스터 파일</label> <input type="file" id="exPost" name="exPost"
						value="<%=exhibition.getExPost()%>">
				</div>

				<div class="container" id="info">


					<label>전시회 명</label> <br> <input type="text" id="exName"
						placeholder="Exhibition Name" name="exName"
						value="<%=exhibition.getExName()%>"> <br>
					<br> <label>전시기간</label> <br> <input type="text"
						id="exStart" placeholder="전시시작" name="exStart"
						value="<%=exhibition.getExStart()%>"> ~ <input type="text"
						id="exEnd" placeholder="전시종료" name="exEnd"
						value="<%=exhibition.getExEnd()%>"> <br>
					<br> <label>가격</label> <br> <input type="text"
						id="exPrice" name="exPrice" value="<%=exhibition.getExPrice()%>">
					<br> <label>장소</label> <br> <input type="text" id="exMap"
						name="exMap" value="<%=exhibition.getExMap()%>"> <br>
				</div>


			</div>

		</section>


		<hr width="900px" style="text-align: center; margin: 0 auto;">

		<section>
			<div id="exContent">
				<label>소개</label> <br>
				<textarea rows="13" cols="130" name="exContent"><%=exhibition.getExContent() %></textarea>
			</div>


			<div id="potos">

				<label>전시회 사진1</label> <input type="file" id="exPoto1"
					name="exPoto1" value="<%=exhibition.getExPoto1()%>"> <br>
				<label>전시회 사진2</label> <input type="file" id="exPoto2"
					name="exPoto2" value="<%=exhibition.getExPoto2()%>"> <br>
				<label>전시회 사진3</label> <input type="file" id="exPoto3"
					name="exPoto3" value="<%=exhibition.getExPoto3()%>"> <br>
			</div>

			<div class="addbutton">
				<input type="submit" class="btn btn-primary" value="등록">
			</div>


		</section>



	</form>



</body>
</html>