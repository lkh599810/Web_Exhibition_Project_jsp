<%@page import="DAO.ExhibitionDAO"%>
<%@page import="DTO.Exhibition"%>
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
          margin: 50px 10px 10px 270px;                                
         text-align: center;
         padding: 0px 20px;
         
      }
      
      
       .posterinfo{ /*포스터+정보 담는 div*/
      
      	
      	border-top: 1px solid pink; /*포스터/전시정보 위에 핑크색 줄 인데, 맘에 안드시면 말씀해주셔요*/
      	
      	
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
  
      
      .sebujungbo{ /*세부정보 td :각 전시회의 실제장소, 실제 전시명 등의 td*/
         margin: 20px 0px 0px 60px;
         
         padding: 30px auto;                      
         letter-spacing:1.5px;
         word-spacing: px;
         line-height: 1.5;
         font-size: 19px;
         text-align: left; 
      	 width: 100px;	
      
      }
      
        .jaemok{
      
      	text-align: left;
      	margin:  10px 0 10px 50px ;   
      
      	
      }
      
  	  .jangso, .gigan {     	
      
      
      	text-align: left;
      	font-size: 13px;
      	  
      
      }
      
      
       .price{ 
      	
		 font-size: 20px;
		 font-style: italic;
		 margin: 0px 10px 0 20px;
		 align-content: center;
      
      }
        
     
    
      
    
    input.img-button {
	        background: url("images/heart1.png" ) no-repeat;
	        border: none;
	        width: 32px; 
	        height: 20px;
	        cursor: pointer;
	        margin: 0px 50px 0 30px;   
	        padding:15px;    
      }
      
      
      
    .like{ /*찜하기 (글자 label)*/
    
    	color: white;                                   	
    	font-size: 18px;
    	margin: 0 0 10px 0;
    	padding: 10 10 30 10; 
    	text-align: left;   
    	align-content: left;
    	        
    	
    }
    
      .yeme{
      
         background-color: white;
         color: black;
         width: 100px;
         height: 40px;
         align-content: right;
         border-radius:10px;
         font-size: 18px;
         padding:3px 3px;
         margin:50px 0px 50px 30px; 
      }
      
      .yeme:hover {
      
	      color: olive;
	      background-color: aqua;
      }
    
     
       /*소개 담고있는 div명*/
      .content{
         text-align: left;
         margin: 50px 0;
         padding: 15px;
       
      }
     
      .sogae{ /*소개 */
         margin: 50px auto;
         padding: 30px auto;
         letter-spacing:1.5px;
         word-spacing: px;
         line-height: 1.5;
         font-size: 20px;
         text-align: left;
      
      }
    
    
       /*캐러셀 이미지*/
      #potos{
         text-align: center;
         margin: 40px 0;
         padding: 15px;
         border: 1px solid yellow;
      }
    
    .map{ /*지도 태그*/
    
    	align-content: center;
    	
    }
        
   </style>

	<script type="text/javascript">
					
					
					
					
	
		
					function button_event(  ){
					if (confirm("예매 하시겠습니까?")){  
						
						
						
						document.yemego.submit();					
	
							
				
					}else{   //취소
						
					    return;
					
					}
					
					
					}//function 끝
				
					
					
		</script>


</head>

<body>

   
   <%@include file = "menu.jsp" %> 
  
  
  	<%
  	
	request.setCharacterEncoding("UTF-8");
	
  	int exNum=Integer.parseInt(request.getParameter("exNum"));
  	
  	ExhibitionDAO dao=ExhibitionDAO.getinstance();
  	
  	Exhibition exhibition= dao.getexhibition(exNum);
  	
  	
  	
  	
  	
  	%>
  
  
   <section>
   
   <div class="posterinfo">
    
	      <div id="poster">
	         <img alt="" src="images/<%=exhibition.getExPost() %>" width="330"  height="330" align="bottom">
	         
	      </div>
	   
	      <div class="container" id="info">
	         <h1 class="jaemok"> <%=exhibition.getExName() %> </h1>                          	
	            <br><p><p>    
	          <form method="post" action="yemefinish.jsp" name="yemego">
			          <table> <%//전시회 정보 테이블 %>
			          
							          	<tr> <%//칸 조정 위한 빈 tr %>
							          	<td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
			          
			          	<tr>
			          		<td class="sebujungbo"> Place  </td>
			          		<td>&nbsp</td>
			          		<td class="jangso">서울 국립중앙박물관</td>
			          		<td>&nbsp</td>
			          		 
			          	</tr>
			          
					          
							          	<tr > <%//칸 조정 위한 빈 tr %>
							          	 <td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
			          
			          
			          	<tr>
			          		<td class="sebujungbo">Period </td>
			          		<td>&nbsp</td>
			          		<td class="gigan"> <%=exhibition.getExStart() %>~<%=exhibition.getExStart() %></td>
			          		<td>&nbsp</td>
			          	</tr>
			          	
			          
			          	
					   					<tr > <%//칸 조정 위한 빈 tr %>
							          	 <td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
					   			
			   			
			   			<tr>
			          		<td class="sebujungbo"> Price  </td>     
			          		<td>&nbsp</td>
			          		<td class="price">&#8361;<%=exhibition.getExPrice() %></td>
			          		
			          		<td>
			          		
			          			
			          			<input type="hidden" value="yemego" name="yemego"> 
			          			<input type="hidden" value="<%=exhibition.getExNum() %>" name="exNum">
			          			
				          		<select style="color: black;" name="yemesu">
				          			<option value="1">1</option>
				          			<option value="2">2</option>
				          			<option value="3">3</option>
				          			<option value="4">4</option>
				          			<option value="5">5</option>
				          			<option value="6">6</option>
				          			<option value="7">7</option>
				          			<option value="8">8</option>
				          			<option value="9">9</option>
			          			</select>
		
			          		</td>
			          	</tr>      
			     
			          	<tr>
			          		<td class="like">찜하기</td>
			          		<td> 
			      				<input type="button" class="img-button">
			      			</td>
			          		<td>
							
			          	 		<input type="button" class="yeme" value="예매하기" onclick="button_event()">
			          	 		
			          		</td>
			         		<td>&nbsp</td>
			          	</tr>
						          
			          
			          </table>
	                    </form>
	          
	          
	          
	          
	          
	          <br><br><br><br> 
	      	
	      		
	           
	           
	           
	            <br><br> <br><br> <br><br> <br><br>
	    
	      </div>
	  
  
   </div> 
   
   
 
   </section>
   
  
  
  
   <section>
   
    			
    <br><br><br><br>
   
      <div class="content">
     
         <br><br> <br><br>  <br><br> <br><br>  <br><br>
         <br><br> <br><br>  <br><br> <br><br>  <br><br> 
         
         	<h1> 소개</h1><p>
         	
         
            <h2 class="sogae">
					<%=exhibition.getExContent() %>               
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
                        <img src="images/<%=exhibition.getExPoto1() %>" width="100%" height="80%">
                     </div>
                     
                     <div class="item">
                        <img src="images/<%=exhibition.getExPoto2() %>" width="100%" height="80%">
                     </div>
                  
                  
                     <div class="item">
                        <img src="images/<%=exhibition.getExPoto3() %>" width="100%" height="80%">
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
   
      
    <section> <%//리뷰 게시판 여기 쓰시면 돼요%>
    
    	
    
    </section>  <%//리뷰 게시판 끝 %>
    
    
    
   
   
   
    <section> <%//지도 %>
    
    	<br><br><br><br>
    	<br><br><br><br><br>
    	
    	
    	<h1>오시는 길</h1>
    	
    	<br><br><br><br><br><br>
    	<div class="map">
    		
    		<img alt="" src="<%=exhibition.getExMap() %>" width="500" height="400">
    		
    	</div>
    
    
    </section>
      
   
</body>
</html>