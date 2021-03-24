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
      
      .yemejungbo{
      
      	text-align: center;
      	border: thick red;                   
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
      
   
      
      h1,h2{
      
         margin:10px 0 0 10px;
      }
      
      /*예매가 완료되었습니다!*/
      .yemewanryo{
      	
      	text-align: center;
      	font-size: 45px;
                            
      }
      
      
     
      .sogae1{/*세부설명*/	
         margin: 20px 0px 0px 60px;
         
         padding: 30px auto;                      
         letter-spacing:1.5px;
         word-spacing: px;
         line-height: 1.5;
         font-size: 15px;
         text-align: left;
      
      }
     
     
      
      .price{/*가격*/
      	
		 font-size: 25px;
		 font-style: italic;
		 margin: 10px 20px 0 10px;
		 align-content: left;
      
      }
        
      
     
      .jaemok{
      
      	text-align: left;
      
      	
      }
      
      .jangso, .gigan, .gwanramilm, .yemeil{
      
      
      	text-align: left;
      	font-size: 20px;      
      
      }
      
       .posterinfo{
      
      	border: 1px solid pink;     
      
      
      }
    
      
      
   </style>
</head>
<body>

   
   <%@include file = "menu.jsp" %> 
  
  
  
   
   <section>
     	
                
         <h1 class="yemewanryo">예매가 완료되었습니다!</h1>
     
   
   </section>
  
  	<br><br><br>
   <hr width="100%">
  	
  
  	
   <section >
   <br><br><br>
  	    <h1 class="yemejungbo">Ticketing information</h1>
    <br>
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
	      		<h2 class="gwanramil">관람일 </h2><p>
	               <h2 class="sogae1">2020.03.25 PM 17:00</h2><br>
  				<h2 class="yemeil">예매 일시 </h2><p>
	               <h2 class="sogae1">2020.03.12 AM 07:30:05</h2><br><br><br><br>     	      
	      
	            <label class="price">$49.0</label>    
	          
	    
	      </div>
	  
  
   </div> 
  
   </section>
   
  
  
  			
   
   
      
   
</body>
</html>