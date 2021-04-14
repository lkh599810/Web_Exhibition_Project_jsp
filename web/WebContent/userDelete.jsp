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
			background-color :	#323232;
			color : white;
			font-family: "나눔고딕";
		}
		section{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
		}
		
		/*서브메뉴*/
		#sub_menu{
			text-align: center;
			float: left;
			margin: 80px 0;
			padding: 15px;
			width: 130px;
			
			border: 2px solid #646464;
			background-color : #3c3c3c;
			border-top:none;
			border-bottom:none;
			border-radius: 10px;
		}
		#sub_menu h3{
			color : white;
			margin: 10px 0 5px 0;
			padding: 5px 0;
			border-bottom: 2px solid black;
		}
		#sub_menu li{
			list-style-type: none;
			padding: 5px 0;
			font-size: 14px;
		}
		#sub_menu li a{
			text-decoration: none;
			color : #d2d2d2;
		}
		#sub_menu li a:hover{
			color : #CDECFA;
			font-weight: bold;
		}
		#user_info{
			margin-bottom: 30px;
		}
		#tic_info{
			margin-bottom: 10px;
		}
		
		
		/*메인메뉴*/
		#userUpdate{
			display:inline-block; 
			width: 780px;
		}
		hr{
			margin: 30px auto 50px auto;
		}
		#formm strong{
			font-size: 20px;
		}
		#formm input{
			border-top: none;
			border-left: none;
			border-right: none;
			border-bottom: 1px solid white;
			background-color : #323232;
			color : white;
			
			font-size: 16px;
			padding: 5px;
			width: 280px;
			height : 30px;
			margin: 20px 0; 
			
		}
	
		#formm input:hover{
			border-bottom: 2px solid #1EA4FF;
		}
		#formm input:focus{
			outline: none;
		}
		
		input#submit, #userUpdate button{
			background-color : #646464;
			color : white;
			border : 1px solid black;
			border-radius: 10px;
			
			width: 120px;	
			height: 50px;	
			margin: 30px 10px;
		}
		#userUpdate button { /*취소버튼*/
			font-size: 16px;
		}
		
		input#submit:hover,#userUpdate button:hover{
			background-color: #CDECFA;
			color : black;
		}
		
		
	</style>
</head>
<body>

	
	<%@include file = "/menu.jsp" %> 
	<section>
		<nav id="sub_menu">
			<h3>나의 정보</h3>
			<ul id="user_info">
				<li><a href="userUpdate.jsp"> ┖ 정보 수정</a></li>
				<li><a href="pointBook.jsp"> ┖ 포인트 내역 </a></li>

			</ul>
			<h3>티켓 정보</h3>
			<ul id="tic_info">
				<li><a href="myTicket.jsp"> ┖ 예매 내역 </a></li>
				<li><a href="myLike.jsp"> ┖ 나의 관심</a></li>
			</ul>
		</nav>
	
		<div id="userUpdate">
		
			<h2>회원 탈퇴</h2>
			<hr width="700">
			<form id="formm" action="userDeleteAction.jsp" method="post">
				 <p> <strong> <%=userID %></strong> 회원님 <br>
				 지금까지 ALL EXHIBITION을 이용해주셔서 감사합니다. </p> <br>
				 <input type="password" id="pw" placeholder="PASSWORD"><br>
				 
				<input type="submit" value="탈퇴" id="submit" onclick="" id="cancel"><button> 취소 </button>
			</form>
		</div>
		
	</section>
	
		
	
</body>
</html>