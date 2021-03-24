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
 }
      body{
         background-color :   #000000;
         color : white;
         font-family: "나눔고딕";
      }
      section{
          width: 1000px;
          margin: 50px auto;
         text-align: center;
         padding: 0px 20px;
         
      }
      
      /*포스터*/
      #poster{
         text-align: center;
         float: left;
         margin: 50px 0;
         padding: 15px;
         width: 400px;
        

      }
      
      /*정보*/
      #info{
         text-align: center;
         float: right;
         margin: 40px 0 0 50px;
         padding: 15px;
         width: 500px;
       
         
      }
      
      /*내용*/
      #content{
         text-align: left;
         margin: 40px 0;
         padding: 15px;
       
      }
      
      /*캐러셀 이미지*/
      #potos{
         text-align: center;
         margin: 40px 0;
         padding: 15px;
         border: 1px solid yellow;
      }
      
      
      h1,h2{
      
         margin:10px 0 0 10px;
      }
      
      .sogae{
         margin: 30px auto;
         
         padding: 30px auto;
         letter-spacing:1.5px;
         word-spacing: px;
         line-height: 1.5;
         font-size: 20px;
         text-align: left;
      
      }
      .sogae1{
         margin: 20px 0px 0px 60px;
         
         padding: 30px auto;                      
         letter-spacing:1.5px;
         word-spacing: px;
         line-height: 1.5;
         font-size: 15px;
         text-align: left;
      
      }
      .yeme{
      
         background-color: white;
         color: black;
         width: 130px;
         height: 50px;
         align-content: center;
         border-radius:10px;
         font-size: 18px;
         padding:3px 3px;
         margin:0px 0px 0px 30px;       
      }
      
      .yeme:hover {
      
	      color: olive;
	      background-color: aqua;
      }
      
      .price{
      	
		 font-size: 25px;
		 font-style: italic;
		 margin: 0px 20px 0 100px;
		 align-content: left;
      
      }
        
      
      .posterinfo{
      
      	border-top: 1px solid pink; /*포스터/전시정보 위에 핑크색 줄 인데, 맘에 안드시면 말씀해주셔요*/
      
      }
      
      .jaemok{
      
      	text-align: left;
      
      	
      }
      
    .jangso, .gigan, .gwanramil, .yemeil{
      
      
      	text-align: left;
      	font-size: 20px;      
      
      }
      
   
    
      
      
      
   </style>
</head>
<body>

   
   <%@include file = "menu.jsp" %> 
  
  
   <section>
   
   <div class="posterinfo">
    
	      <div id="poster">
	         <img alt="" src="images/monet1.jpg" width="330" height="430">
	      </div>
	   
	      <div class="container" id="info">
	         <h1 class="jaemok">모네 특별전</h1>
	            <br>
	            <h2 class="jangso">장소 </h2><p>      
	               <h2 class="sogae1">서울시 용산구 국립중앙박물관</h2><br>
	            <h2 class="gigan">기간 </h2><p>
	               <h2 class="sogae1">2020.03.12~2020.05.14</h2><br>
	           <h2 class="gwanramil">관람일</h2><p>
	               <h2 class="sogae1">2020.03.25 PM 17:00</h2><br>
  				<h2 class="yemeil">예매 일시 </h2><p>
	               <h2 class="sogae1">2020.03.12 AM 07:30:05</h2><br><br><br><br> 
	      
	            <label class="price">$49.0</label>
	            <button class="yeme" type="button" onclick="login.jsp">예매 하기</button>
	            <br><br><br><br><br>
	            
	    
	      </div>
	  
  
   </div> 
   
   
 
   </section>
   
  
  
  			
   <br><br><br><br><br>
   <hr width="100%">
   
   <section>
      <div id="content">
         <h1>소개</h1><p>
            <h2 class="sogae">
            국립중앙박물관은 훈민정음 반포 574주년을 맞이하여 

            테마전 '모네 특별전'을(2020.10.7.~2021.3.31.)를 개최합니다.
               
            이 전시는 국립중앙박물관이 2004년부터 편찬한 『역사자료총서』의 연구 성과를 토대로 
               
            박물관이 소장하고 있는 역사자료의 내용을 재미있게 풀어내어 
               
            청소년을 비롯한 일반 대중에게 역사에 대한 관심을 높이고자 마련하였습니다.
               
            한자나 옛 한글로 쓰여진 역사자료를 한글로 쉽게 풀어내고, 
               
            재미있는 콘텐츠와 함께하는 전시, 국립중앙박물관에서 만나보세요.
               
            </h2>
      </div>
         
         
      <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000">
            
            <ol class="carousel-indicators">
            
               <li data-target="#myCarousel" data-slide-to="0" class="active"></li>   
               <li data-target="#myCarousel" data-slide-to="1"></li>
               <li data-target="#myCarousel" data-slide-to="2" ></li>
               
            </ol>
               
                  <div class="carousel-inner">
                  
                     <div class="item active">
                        <img src="images/monet1.jpg" width="100%" height="80%">
                     </div>
                     
                     <div class="item">
                        <img src="images/monet2.jpg" width="100%" height="80%">
                     </div>
                  
                  
                     <div class="item">
                        <img src="images/monet3.jpg" width="100%" height="80%">
                     </div>
                  
                  </div>
                  
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
               <span class="glyphicon glyphicon-chevron-left"></span>
            </a>   
            
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
               <span class="glyphicon glyphicon-chevron-right"></span>
            </a>   
         </div>
   
   </section>
   
      
   
</body>
</html>