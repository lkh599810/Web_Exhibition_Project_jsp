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
		
		<%//서브메뉴%>
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
		
		
		<%//메인메뉴%>
		#userUpdate{
			display:inline-block; 
			width: 780px;
		}
		hr{
			margin: 30px auto 50px auto;
		}
		#formm{
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
			margin-bottom: 30px; 
			
		}
	
		#formm input:hover{
			border-bottom: 2px solid #1EA4FF;
		}
		#formm input:focus{
			outline: none;
		}
		
		input#submit{
			background-color : #646464;
			color : white;
			border : 1px solid black;
			border-radius: 10px;
			
			width: 90px;	
			height: 40px;	
			margin-top: 40px;
		}
		input#submit:hover{
			background-color: #CDECFA;
			color : black;
		}
		
		
	</style>
</head>
<body>

	
	<%@include file = "menu.jsp" %> 
	<section>
		<nav id="sub_menu">
			<h3>회원정보</h3>
			<ul id="user_info">
				<li><a href="userUpdate.jsp">	┖ 회원수정</a></li>
				<li><a href="userDelete.jsp"> ┖ 회원탈퇴</a></li>
			</ul>
			<h3>티켓정보</h3>
			<ul id="tic_info">
				<li><a href="myTicket.jsp"> ┖ 나의 티켓 </a></li>
				<li><a href="myLike.jsp"> ┖ 나의 관심</a></li>
			</ul>
		</nav>
	
		<div class="container" id="userUpdate">
		
			<h2>회원 수정</h2>
			<hr width="700">
			
			<form action="#" method="post" onsubmit="" id="formm">
			
				 <input type="text" id="id" placeholder="ID" readonly="readonly"> <br>
				 <input type="password" id="pw" placeholder="PASSWORD"><br>
				 <input type="password" id="pw_check" placeholder="PASSWORD CHECK"><br>
				<input type="text" id="name" placeholder="NAME"><br>
				 <input type="email" id="eamil" placeholder="EMAIL"><br>
				 <input type="text" id="phone" placeholder="PHONE"><br>
				 
				<input type="submit" value="수정" id="submit">
			</form>
		</div>
		
	</section>
	
		
	
</body>
</html>