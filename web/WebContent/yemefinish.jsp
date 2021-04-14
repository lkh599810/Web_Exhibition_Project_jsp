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
    
    
   	.homebutton{
   		  
      
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
   	
   		
   	}
 
       
      
   </style>
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
     	
                  
         <h1 class="yemewanryo">예매가 완료되었습니다!</h1>
     
   
   </section>
  
  	<br>
  
  	
  
  	
   <section >
   <br><br>
  	   
  	    <h1 class="ticketing">Ticketing information</h1>
    <br>
   
    
	      <div class="container">
	      
	      
	    	
	    	<table class="yemejungbo">
	    	
	    		<tr>
		    		<td > 전시 명 </td>
		    		<td class="jaemok"> <%=exhibition.getExName() %> </td>
	    		</tr>
	    		
	    		<tr>
		    		<td> 전시 기간 </td>
		    		<td class="gigan"><%=exhibition.getExStart() %>~<%=exhibition.getExStart() %> </td>
	    		</tr>
	    		
	    		<tr>   
	    			<td> 예매수량 </td>
	    			<td> <%=yemesu %> </td>
	    		</tr>
	    		
	    		<tr>
		    		<td> 전시회 가격 </td>
		    		<td class="price">&#8361;<%=exhibition.getExPrice()%></td>
	    		</tr>
	    	
	    		
	    		
	    	
	    		
	    	
	    	</table>
	    	
	    	
	    	
		    	<div class="allprice">
			    	<label id="label1">
			    		총 가격 : 
			    	</label>
			    	
			    	<label id="label2">
			    		 &#8361;<%=exhibition.getExPrice()*yemesu %>
			    	</label>
		    	</div>
	    	
	    	
	      </div>
	      
	      <%
	      
	      	int exSold =exhibition.getExSold() + yemesu;
	      	
	      	exhibition.setExSold(exSold);	 //핵심
	      
	      	dao.updatesold(exhibition);
	      
	      
	      %>
	      
		
		<br><br><br>	
		<input type="button" class="homebutton" onclick="location.href='main.jsp'" value="홈으로 돌아가기">
    
  
   </section>
   
  
  
  			
   
   
      
   
</body>
</html>