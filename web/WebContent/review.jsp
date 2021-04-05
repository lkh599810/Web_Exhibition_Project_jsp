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
			background-color: white;
			color: black;
			font-family: "나눔고딕";
		}
		#reviewSection{
 			width: 1000px;
	 		margin: 50px auto;
			padding: 0px 20px;
		}
		#reviewTitle{
			padding-left: 90px;
			margin-bottom: 20px;
			font-size: 30px;
		}
		
		table{
			margin: 0px auto;
		}
		
		/*리뷰 등록*/
		#reviewSave{
			padding: 20px;
			margin-bottom: 20px;
		}
		#reviewText{
			padding: 10px;
			margin-right: 10px;
		}
		#star{
			margin-top: 10px;
			padding: 5px;
			font-size: 15px;
		}
		#send{
			margin-bottom: 10px;
			padding: 5px;
			font-size: 15px;
			width: 108px;
			height: 33px;
		}
		
		/*총 별점 평균*/
		#Allstar{
			text-align: center;
			width : 300px;
			padding: 20px;
			margin: 20px auto;
			border: 5px solid #dcdcdc;
		}
		#Allstar h2{
			display : inline;
		}
		#Allstar p{ 
			display : inline;
			margin: 5px 0 0 10px;
			font-size: 12px;
		}


		
		/*리뷰 테이블*/
		#reviewTable{
			margin: 20px 0;
			padding: 20px;
			border-collapse: collapse;
		}
		#userInfo td{
			font-size: 10px;
			padding-left: 20px;
		}
		#viewInfo #stl{
			padding: 10px 20px;
		}
		#viewInfo td{
			border-bottom: 1px solid #323232;
		}
		
		
		
		input.img-button {
	        background: url("images/edit2.png" ) no-repeat;
	        border: none;
	        width: 32px;
	        height: 32px;
	        cursor: pointer;
      	}
      	input.img-button1 {
	        background: url("images/close2.png" ) no-repeat;
	        border: none;
	        width: 32px;
	        height: 32px;
	        cursor: pointer;
      	}


	</style>


</head>
<body>

<section id="reviewSection">

		<h1 id="reviewTitle">Review</h1>

		<div id="reviewSave"><%//해당 전시회를 보았으며, 아직 리뷰를 쓰지 않은 회원만 보이게 %>
			
			<table>
				<%//사진 파일은 어디에 넣지? %>
				  <tr>
				        <td rowspan="2"><textarea rows="5" cols="90" id="reviewText" placeholder="리뷰 내용을 입력해주세요."></textarea></td>
						<td>
							<select id="star">
								<option>☆☆☆☆☆</option>
								<option>★☆☆☆☆</option>
								<option>★★☆☆☆</option>
								<option>★★★☆☆</option>
								<option>★★★★☆</option>
								<option selected="selected">★★★★★</option>
							</select>
						</td>
				  </tr>
				  <tr>
					  <td><input id="send" type="submit" value = "등록" onclick = "button_event"></td>
				  </tr>
			</table>
		</div>	
		<div id="Allstar">
			<h2>★ 4.8</h2> 
			<p>(총 34명)
			
		</div>	

		<div id="reviewTable">
			<table class="table table-hover">
						
				<tr id="userInfo">
					<td colspan="4">id | Date</td>
				</tr>
				<tr id="viewInfo">
					<td id="stl" width="600">리뷰내용 블라블라-</td>
					<td id="stl">★★★☆☆</td>	
					<td><input type = "button" onclick = "button_event" class="img-button"></td>
					<td><input type = "button" onclick = "button_event" class="img-button1"></td>
				</tr>
				
						
			</table>
		</div>		


 </section>

</body>
</html>