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
			background-color :	#323232;
			color : white;
			font-family: "��������";
		}
		#login{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
		}
		hr{
			margin: 40px auto;
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
			font-weight: bold;
			color: black;
			border : 1px solid black;
			border-radius: 10px;
			width: 90px;	
			height: 40px;	
		}
		input#submit:hover{
			background-color: #CDECFA;
		}
		
	</style>
</head>
<body>

	
	<%@include file = "menu2.jsp" %> 
	<div id="login">
		<h2>LOGIN</h2>
		<hr width="600">
		
			
			<div id="formm">
				 <input type="text" id="id" placeholder="ID">  <br>
				 <input type="password" id="pw" placeholder="PASSWORD"><br>
			</div>
			
		
			<input type="submit" value="�α���" id="submit">

	</div>
</body>
</html>