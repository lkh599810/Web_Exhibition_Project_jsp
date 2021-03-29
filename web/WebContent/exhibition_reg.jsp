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
      	border-top: 1px solid pink; /*포스터/전시정보 위에 핑크색 줄 인데, 맘에 안드시면 말씀해주셔요*/
      
      }
      
      
      /*포스터*/
      #poster{
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
      #content{
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
 	#exPoto1,#exPoto2{
      	margin: 0 auto;
      }
      
      
   </style>
</head>
<body>

   
	<%@include file = "menu.jsp" %> 
  
  <form>
   <section>
	   <div class="posterinfo">
	    
		      <div id="poster">
		         <label>포스터 파일</label> <input type="file" id="exPost" >
		      </div>
		   
		      <div class="container" id="info">
		      	<br>
		         <label>전시회 명</label> <br>
		         	<input type="text" id="exName" placeholder="Exhibition Name">
		            <br><br>
		         
		         <label>전시기간</label> <br>
		        	 <input type="text" id="exStart" placeholder="전시시작"> ~ 
					<input type="text" id="exEnd" placeholder="전시종료"> <br><br>
					 
		         <label>가격</label> <br>
					<input type="text" id="price" > <br><br>
					
				 <label>장소</label> <br>
					<input type="text" id="place"> <br><br>
		      </div>
		  
	  
	   </div> 
   
   </section>
   
  
   <hr width="900px" style="text-align: center; margin : 0 auto;">
   
   <section>
      <div id="content">
         <label>소개</label> <br>
       	<textarea rows="13" cols="130"></textarea>
      </div>
         
         
      <div id="potos">
            
		         <label>전시회 사진1</label> <input type="file" id="exPoto1" > <br>
		         <label>전시회 사진2</label> <input type="file" id="exPoto2" >
               
         </div>
   
   </section>
   </form>
   
      
   
</body>
</html>