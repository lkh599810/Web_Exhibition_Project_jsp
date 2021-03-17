<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style type="text/css">
 *{
 	margin:0;
 	padding: 0;
 }
 	body{
 		background-color: black;
 	}
 	a{
 		text-decoration: none;
 		color: #7b7579;
 	}
 	a:hover{
 		color: white;
 	}
 	li{
		list-style-type: none;
 	}
 	
 	
 	header{
 		width: 100%;
 		margin: 0 auto 20px auto;
 	}
 	#wrap{
 		width: 1000px;
 		height : 110px;
 		margin: 0 auto;
 	}
 	
 	#logo{
 		float : left;
 		margin: 20px 0 0 50px;
 	}
 	
 	#menu{
 		float: right;
 		text-align: right;
		font-family: "맑은고딕";
 	}
 	#menu li{
 		display: inline-block;
 		margin: 15px 5px 0 50px;
 		font-size: 14px;
	}
 	#member_menu{
 		margin: 20px auto;
 		color : white;
 	}
 	#main_menu{
 		margin:  20px 200px 0 0;
 	}
 	#main_menu li{
		font-weight: bold;
 		margin-right: 20px;
		font-size: 20px; 
 	}
 	
</style>
</head>
<body>

	<header>
		<div id="wrap">	
			<div id="logo">
				<img alt="" src="images/logo3.png" width="200">
			</div>
			<nav id="menu">
				<ul id="member_menu">
					<li><a href="#">Login</a></li>
					<li><a href="#">SingUp</a></li>
				</ul>
				
				<ul id="main_menu">
					<li><a href="#">PAST</a></li>
					<li><a href="#">CURRENT</a></li>
					<li><a href="#">UPCOMMING</a></li>
				</ul>
			</nav>
		</div>
	</header>
	

</body>
</html>