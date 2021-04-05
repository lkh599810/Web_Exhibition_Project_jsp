<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
 *{
 }
 	body{
  	}

 	
 	header{
 	
 	margin:0;
 	padding: 0;
 		background-color: #000000;
 		width: 100%;
 		margin: 0 auto;
 	}
 	#wrap{
 		width: 1000px;
 		height : 130px;
 		margin: 0 auto;
 	}
 	
 	#logo{
 		float : left;
 		margin: 30px 0 30px 50px;
 	}
 	
 	#menu{
 		padding-left: 280px;
 		text-align: right;
		font-family: "맑은고딕";
 	}
 	#menu li{
		list-style-type: none;
 		display: inline-block;
 		float: left;
	}
	
	#menu li a{
 		text-decoration: none;
 		color: #7b7579;
 	}
 	#menu li a:hover{
 		color: white;
 	}
	#member_menu{
		margin : 30px 20px 0 0;
		float: right;
		color: #90827b;
	}
	#member_menu li{
		font-size: 14px;
	}
	#member_menu li a{
		margin: 0 10px;
		color: #90827b;
	}
	#member_menu li a:hover{ 
		color: #90827b;
		font-weight: bold;
	}
	
	#main_menu{
		padding-top: 70px;

	}
	#main_menu li {
		font-family:"나눔고딕";
		margin: 0 45px;
		font-size: 20px;
		font-weight: bold; 
	}
	
	
	
	#search{
 		display: inline-block;
 		width: 163px;
 		height: 25px;
	}
	#keyword{
		width: 120px;
		height: 20px;
		padding-left: 5px;
 		vertical-align: middle;
	}
	#search button{
		height: 25px;
		color : white;
		font-size: 12px;
	}
 	
</style>
</head>
<body>

	<header>
		<div id="wrap">	
			<div id="logo">
				<a href="main.jsp"> <img alt="" src="images/logoo.JPG" width="230"> </a>
			</div>
			<nav id="menu">
						
				<ul id="member_menu">
					<li><a href="login.jsp">Login</a>|</li>
					<li><a href="signup.jsp">SingUp</a>|</li>
					<%//회원로그인 %>
					<li><a href="myTicket.jsp">MyPage</a></li>
					<%//관리자로그인 %>
					<li><a href="exhibitionList.jsp">List</a></li>
				</ul>
			
				<ul id="main_menu">
					<li><a href="#">PAST</a></li>
					<li><a href="#">CURRENT</a></li>
					<li><a href="#">UPCOMMING</a></li>
				</ul>
				
				
			</nav>
			<div id="search">
				<input type="text" id="keyword" placeholder="Search" class="form-control">
				<button>검색 </button>
			</div>
			
		</div>
	</header>
	

</body>
</html>