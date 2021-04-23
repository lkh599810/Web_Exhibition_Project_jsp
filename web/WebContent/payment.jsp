<%@page import="DTO.Exhibition"%>
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
      
       /*예매가 완료되었습니다!*/
      .yemewanryo{
      	
      	text-align: center;
      	font-size: 45px;
      	margin: 100px auto;

      }
      
       .ticketing{
      	
      	border-bottom: 1px solid pink ;
      	       
      	padding: 20px 0 20px 0;
      
      }
      
      
       table.yemejungbo{
      
      	
      	align-content: center;
      	margin: 20px auto;   
      	width: 400px;
      	height: 300px;           
      	text-align: center;
      
      }
      
   
        
      /*정보*/
      .container{
         text-align: center;
        
         margin: auto;
         padding: 15 15 15 15;
         width: 500px;
         border: 1px solid white;    
       		
         
      }
      
      td{         
      
      	font-size: 20px;          
       
      }
      .gigan{
      
      	font-size:15px;
      }
      
      
      .allprice{
      	
      	margin: 20px;	
      	font-size: 22px;
      
      }
    
    
   	.homebutton, .yemebutton{
   		  
      
         background-color: white;
         color: black;
         width: 200px;   
         height: 60px;
         align-content: center;
         border-radius:10px;
         font-size: 18px;
         padding:3px 3px;
         margin:50px 0px 50px 30px; 
      }
      
      .homebutton:hover {
      
	      color: blue;
	      background-color: silver;
      }
   	
   		
   	
   	
    
      
   </style>
   
   
   
   <script type="text/javascript">
   
   function yeme_event(userID){
		
		
		if (confirm("예매 하시겠습니까?")){  
			
			if(userID=="null"){
				
				alert('로그인이 필요합니다.');
				 
				return;
				
			}else if(userID!="null"){
				
				document.yemego.submit();
				
				
				
			}else{   //취소
			
		    return ;
		
			}
		
		
		
		}
		
		}//예매 function 끝
   
   </script>
   
</head>
<body>

   
   <%@include file = "menu.jsp" %> 
  
  <% 
  	request.setCharacterEncoding("UTF-8");
	
	int yemesu=Integer.parseInt(request.getParameter("yemesu"));
  
  	int exNum=Integer.parseInt(request.getParameter("exNum"));
  	
  	
  	ExhibitionDAO dao=ExhibitionDAO.getinstance();
  	
  	Exhibition exhibition= dao.getexhibition(exNum);

  	%>
  
   
   <section>
     	
                  
         <h1 class="yemewanryo">결제 페이지</h1>
     
   
   </section>
  
  	

   <section>
 
  	   
  	   
    <br>
   
    
	      <div class="container">
	      
	     <form method="post" name="yemego" action="yemefinish.jsp"> 
	    	
	    		<input type="hidden" value="yemego" name="yemego">
			    <input type="hidden" value="<%=exhibition.getExNum()%>" name="exNum">
			    <input type="hidden" value="<%=yemesu %>" name="yemesu">
	    	
	    	<table class="yemejungbo">
	    	
	    		<tr>
		    		<td > 전시 명 </td>
		    		<td class="jaemok"> <%=exhibition.getExName() %> </td>
	    		</tr>
	    		
	    		<tr>
		    		<td> 전시 기간 </td>
		    		<td class="gigan"><%=exhibition.getExStart() %>~<%=exhibition.getExEnd() %> </td>
	    		</tr>
	    		
	    		<tr>   
	    			<td> 예매수량 </td>
	    			<td> <%=yemesu %> </td>
	    		</tr>
	    		
	    		<tr>
		    		<td> 전시회 가격 </td>
		    		<td class="price">&#8361;<%=exhibition.getExPrice()%></td>
	    		</tr>
	    	
	    		
	    		<tr>
	    		 
	    			<td>포인트</td>
	    			
	    			<td>
	    				<input type="text" placeholder="포인트 사용" name="point" style="background-color: white; color: black; width: 100px; font-size: 15px;"> 
	    				<input class="usepoint" value="입력" type="button" name="입력" style="margin-left:20px; background-color: white; color: black; border-radius: 20%; font-size: 15px; ">
	    				<input class="allpoint" value="전액사용" type="button" name="전액사용" style="background-color: white; color: black; border-radius: 20%; font-size: 15px;  ">
	    			</td>
	    			
	    		</tr>
	    		
	    		<tr>
	    			<td>현재 포인트</td>
	    			<td> <label style="color: red;">현재 포인트</label> </td>
	    		</tr>
	    		
	    	
	    	</table>
	    	
	    	</form>
	    	
		    	<div class="allprice">
			    	<label id="label1">
			    		총 가격 : 
			    	</label>
			    	
			    	<label id="label2">
			    		 &#8361;<%=exhibition.getExPrice()*yemesu /* 여기에 - 포인트 해주시면 됩니다. */ %> 
			    	</label>
		    	</div>
	    	
	    	
	      </div>
	      
	 
	      
	      <br><br><br>	
	      
	     
		
		<br><br><br>	
		<input type="button" class="homebutton" onclick="location.href='main.jsp'" value="홈으로 돌아가기">
    	<input type="button" class="yemebutton" onclick="yeme_event('<%=userID %>')" value="예매하기">
  		
   </section>
   
  
  
  			
   
   
      
   
</body>
</html>