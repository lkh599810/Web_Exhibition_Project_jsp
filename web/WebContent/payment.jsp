<%@page import="single.Pay"%>
<%@page import="dto.Point"%>
<%@page import="dao.PointDAO"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="dto.Exhibition"%>
<%@page import="dao.ExhibitionDAO"%>
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
   	
   		.alertPoint{
   			font-size : 12px; 
   			text-align : left;
   			padding-left: 12px;
   			color: red;
   		}
   	
   	
    
      
   </style>
   
   
   
   <script type="text/javascript">
	
	function pointCheck(point) {
		//point 숫자만 받게..

		if(!yemego.point.value || yemego.point.value < 0){
			alert("포인트칸을 확인해주세요");
			return false;
		}
		if( point ){
			location.href = 'pointCheckAction.jsp?point='+point;
		}
		
	}
	
   
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
		
		function checkForm() {
			if(yemego.point_result.value == 1 &&yemego.point_result.value == -2){
				return true;
			}
			else{
				alert("포인트 사용을 확인해주세요");
				return false;
			}
		}
   </script>
   
</head>
<body>

   
   <%@include file = "menu.jsp" %> 
  
  <% 
  	request.setCharacterEncoding("UTF-8");
 
 	Pay pay = Pay.getInstance();
 		
  	 if(request.getParameter("exNum")!=null && request.getParameter("yemesu")!=null)
  	{
  		pay.exhibitionNum= Integer.valueOf(request.getParameter("exNum")); //전시회번호
  		pay.bookCount= Integer.valueOf(request.getParameter("yemesu")); //예매수
  	} 
  	int exNum = pay.exhibitionNum; //전시회번호
	int yemesu = pay.bookCount; //예매수
  	
  	
  	ExhibitionDAO dao=ExhibitionDAO.getinstance();
  	
  	Exhibition exhibition= dao.getexhibition(Pay.getInstance().exhibitionNum);
  	
  	int price = pay.price = exhibition.getExPrice()*yemesu;
  	
  	//포인트 써도되는지 확인
	int check = -2; //초기값
	if(request.getParameter("check")!=null){ 
		check= Integer.valueOf(request.getParameter("check"));
	}
	//써도 되면 포인트값
	int usePoint = 0; //초기값 
	if(request.getParameter("usepoint")!=null){ 
		usePoint= Integer.valueOf(request.getParameter("usepoint"));
	}
	
  	%>
  
   
   <section>
     	
                  
         <h1 class="yemewanryo">결제 페이지</h1>
     
   
   </section>
  
  	<%
  	if(userID==null){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인이 필요한 서비스입니다.')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}

  	PointDAO pointdao = PointDAO.getInstance();
    
  	int point = pointdao.getuserPoint(userID); //보유포인트
  	
	

	
  	%>

   <section>
 
  	   
  	   
    <br>
   
    
	      <div class="container">
	      
	     <form method="post" id="yemego" action="yemefinish.jsp" onsubmit="return checkForm()"> 
	    	
	    		<input type="hidden" value="yemego" name="yemego">
			    <input type="hidden" value="<%=exNum%>" name="exNum">
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
		    		<td> 총 금액 </td>
		    		<td class="price">&#8361;<%=price%></td>
	    		</tr>
	    	
	    		<tr>
	    			<td>보유 포인트</td>
	    			<td> <label style="color: red;"><%=point %></label> </td>
	    		</tr>
	    		
	    		
	    		<tr>
	    			<td>사용 포인트</td>	
	    			<td>
	    			<%
	    			if(check==1){%>
	    				<input type="number" min='0' placeholder="포인트 사용" value="<%=usePoint %>" id="point" name="point" style="padding : 5px; background-color: white; color: black; width: 130px; font-size: 15px;"> 
	    			<%} else{%>
	    				<input type="number" min='0' name="point" style="padding : 5px; background-color: white; color: black; width: 130px; font-size: 15px;"> 
	    			<%} %>
	    				<input type="hidden" name="point_result" value="<%=check%>">
	    				<button type="button" onclick="pointCheck(this.form.point.value)" style=" width: 40px; margin-left:20px; background-color: white; color: black; border-radius: 20%; font-size: 15px; "> 입력 </button>
	    				<br>
	    			</td>
	    		</tr>
	    		
	    		<tr>
	    			<td></td>
	    			<%if(check==0){%>
	    				<td class="alertPoint">보유 포인트 이상 사용은 불가능합니다.</td>
	    			<%}%>
	    		</tr>
	    		
	    	
	    	</table>
	    	
	    	</form>
	    	
		    	<div class="allprice">
			    	<label id="label1">
			    		결제 금액 : 
			    	</label>
			    	
			    	<label id="label2">
			    		 &#8361;<%=price-usePoint /* 여기에 - 포인트 해주시면 됩니다. */ %> 
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