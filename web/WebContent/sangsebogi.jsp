<%@page import="dao.ExhibitionDAO"%>
<%@page import="dto.Like"%>
<%@page import="dao.LikeDAO"%>
<%@page import="dao.ExhibitionDAO"%>
<%@page import="dto.Exhibition"%>
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
    
    
       section	{
          width: 1000px;
          margin: 50px auto;                               
         text-align: center;
         padding: 0px 20px;
         
      }
      
      section.posterinfosection, .contentCarousel{ /*포스터+정보 있는 섹션*/
          width: 1000px;
          margin: 50px auto;                               
         text-align: center;
         padding: 0px 20px;
         
      }
      
      
      
     
      
      
       .posterinfo{ /*포스터+정보 담는 div*/
       height : auto;
      	
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
        
     
    
      
    
    input.img-button1{
    		background-image:url("images/heart0000.png");
	        border: none;
	        width: 30px; 
	        height: 20px;
	        cursor: pointer;
	        margin: 0px 50px 0 30px;   
	        padding:15px;    
      }
      
       input.img-button2{
    		background-image:url("images/heart1111.png");
	        border: none;
	        width: 30px; 
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
    
      .payment{
      
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
      
      .payment:hover {
      
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
    .navigation{
    
    	text-align: left;
    
    }
    
    
    
        
   </style>

	<script type="text/javascript">
					
					
		
					function payment_event(userID){
						
						
					if (confirm("예매 하시겠습니까?")){  
						
						if(userID=="null"){
							
							alert('로그인이 필요합니다.');
							 
							return;
							
						}else if(userID!="null"){
							
							document.paymentgo.submit();
							
							
							
						}else{   //취소
						
					    return ;
					
						}
					
					
					
					}
					
					}//예매 function 끝
					
					
					
					
				//============찜하기 function===============
					
					
					// 1.로그인 안돼었을 때 찜하기 버튼 클릭 시;
					function like_event1(){ 
						
						alert('로그인이 필요합니다.');
						
						return;
					
					}
					
					
					
					//2. 로그인 되어있고, 찜하기 버튼을 클릭 시; //찜 안되어있을 시
					function like_event2(likeUserID,likeExNum) {
					
						if(confirm("찜 하시겠습니까?")){
							
							document.location.href="likeAction.jsp?likeUserID="+likeUserID+"&likeExNum="+likeExNum;
							
							
						}else{
							
							return;
							
						}
						
						
						
					}
					
					//3. 로그인 되어있고, 찜하기 버튼을 클릭 시; //찜 되어있을 시
					function like_event3(likeUserID,likeExNum) {
						
						if(confirm("찜 해제 하시겠습니까?")){
							
							document.location.href="likeAction.jsp?likeUserID="+likeUserID+"&likeExNum="+likeExNum;
							
							
						}else{
							
							return;
							
						}
						
						
						
					}
					
		</script>


</head>

<body>

   
   <%@include file = "/menu.jsp" %>
  
  
  	<%
  	
  	userID= (String)session.getAttribute("userID");
  	
  	
  	
	request.setCharacterEncoding("UTF-8");
	
  	
 
  	int exNum=Integer.parseInt(request.getParameter("exNum"));
  	
  	ExhibitionDAO dao=ExhibitionDAO.getinstance();
  	
  	Exhibition exhibition= dao.getexhibition(exNum);
 	
  	String likeUserID=userID; //세션 유저아이디를 likeUserID에 대입. 여기의 String likeUserID는 db의 like테이블의 특정 행의  likeUserID가 아니다.
  	int likeExNum=exNum; //exNum을 likeExnum에 대입.
  	
  	
  	Like like = new Like();
  	
	  	LikeDAO likedao=LikeDAO.getinstance();
		  	
	  	like=likedao.getlike(likeUserID, likeExNum); //여기가 문젠가? DAO의 getlike rs.next rs가 없을경우 해줘야하는듯
	  	
  	
  //	like테이블에 아무것도 없을때는?	 
  	
  	%>
  
  
   <section class="posterinfosection">
   
   <div class="posterinfo">
  	
	      <div id="poster">
	         <img alt="" src="images/<%=exhibition.getExPost() %>" width="330"  height="330" align="bottom">
	         
	      </div>
	   
	      <div class="container" id="info">
	         <h1 class="jaemok"> <%=exhibition.getExName() %> </h1>                          	
	            <br><p><p>
	            
	            
	        
	        
	          
			
				<form method="post" name="paymentgo" action="payment.jsp">
			         
			         
			          <table> <%//전시회 정보 테이블 %>
			          
							          	<tr> <%//칸 조정 위한 빈 tr %>
							          	<td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
			          
			          	<tr>
			          		<td class="sebujungbo"> Place  </td>
			          		<td>&nbsp</td>
			          		<td class="jangso"><%=exhibition.getExMap() %></td>
			          		<td>&nbsp</td>
			          		 
			          	</tr>
			          
					          
							          	<tr > <%//칸 조정 위한 빈 tr %>
							          	 <td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
			          
			          
			          	<tr>
			          		<td class="sebujungbo">Period </td>
			          		<td>&nbsp</td>
			          		<td class="gigan"> <%=exhibition.getExStart() %>~<%=exhibition.getExEnd() %></td>
			          		<td>&nbsp</td>
			          	</tr>
			          	
			          
			          	
					   					<tr > <%//칸 조정 위한 빈 tr %>
							          	 <td>&nbsp</td>	<td></td>	<td></td>	<td>&nbsp</td>
							          	</tr>
					   			
			   			
			   			<tr>
			          		<td class="sebujungbo"> Price</td>     
			          		<td>&nbsp</td>
			          		<td class="price">&#8361;<%=exhibition.getExPrice() %></td>
			          		
			          		<td>
			          		
			          			
			          			<input type="hidden" value="yemego" name="yemego">
			          			<input type="hidden" value="<%=exhibition.getExNum()%>" name="exNum">
			          			
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
			          		
			          		<%
			          			/*로직 : 1.로그인이 되어있나? => 로그인 안한 상태면 빈하트 => 하트 클릭 시 ('로그인 필요함' 창 띄우기)
			          					2.로그인 한 상태면 찜하기상태(likeCondition)가 0일땐 빈하트(heart0000.png), 찜하기 상태가 1 일땐 빨강하트(heart1.png)		
			          			*/
			          			
			          		if(userID==null){
			          			  
			          			
			          		%>
        		
			          		<td> 
			      				<input type="button" class="img-button1" onclick="like_event1()">
			      			</td>
			      			
			      			<%
			      			}else if(userID!=null){ ////작동.
			      				
			      				if(like==null || like.getLikeCondition()==0){//여기를, if userid=like.getlikeUserID && exNum=like.getlikeExNum 일때 그 행의 condition이 0/1일때
			      			
			      			
			      			%>
			      			
			      		
				      		<td> 
			      				<input type="button" class="img-button1" onclick="like_event2('<%=likeUserID%>','<%=likeExNum%>')">
			      				
			      			</td>
			      			
			      			
				      		
				      		
				      		<%}else if(like.getLikeCondition()==1){ //아직 실험 x%>
			      			
			      			
			      			<td> 
			      				<input type="button" class="img-button2" onclick="like_event3('<%=likeUserID%>','<%=likeExNum%>')">
			      			</td>
			      			
			      			<%  
			      				}
			      				
			      			}
			      			
			      			%>
				      			
				      			
				          		<td>
									
				          	 		<input type="button" class="payment" value="예매하기" onclick="payment_event('<%=userID %>')">
				          	 		
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
   
  
  
  
   <section class="contentCarousel">
   
    			
    <br><br><br><br>
   
      <div class="content">
     
         <br><br> <br><br>  <br><br> <br><br>  <br><br>
         <br><br> <br><br>  <br><br> <br><br>  <br><br> 
         
         	<h1> 소개</h1><p>
         	
         
            <h2 class="sogae">
					<%=exhibition.getExContent() %>               
            </h2>
      </div>
         
         
      <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="3000" >
            
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
   
      
    <section class="review"> <%//리뷰 게시판 여기 쓰시면 돼요%>
    
    	
    
    </section>  <%//리뷰 게시판 끝 %>
    
    
    
   
   
   
    <section> <%//지도 %>
    
    	<br><br><br><br>
    	<br><br><br><br><br>
    	
    	
    	<h1 class="navigation">오시는 길</h1>
    	
    	<br><br><br><br><br><br>
    	<div class="map">
    		
    		
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.97231713436!2d126.9318055991481!3d37.555715994886924!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c989510707201%3A0x825b9570d1bd0b8!2z7Iug7LSMIOuplOqwgOyKpO2EsOuUlO2VmeybkA!5e0!3m2!1sko!2skr!4v1618910494601!5m2!1sko!2skr" width="600" height="500" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    	</div>
    
    
    </section>
      
    <br><br><br><br><br>  
      
     
      
   
</body>
</html>