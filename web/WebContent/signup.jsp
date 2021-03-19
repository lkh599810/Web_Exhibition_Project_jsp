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
			font-family: "나눔고딕";
		}
		#sign{
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
		
		fieldset{
			margin : 40px auto;
			width: 700px;
			border: 1px solid #CDECFA;
			border-radius: 10px;
			padding: 20px;
			color : #dcdcdc;
		}
		.agree{
			height : 150px;
			overflow: scroll;
			text-align: left;
		}
		
		input#submit{
			font-weight: bold;
			color: black;
			border : 1px solid black;
			border-radius: 10px;
			width: 90px;	
			height: 40px;	
			margin-top: 40px;
		}
		input#submit:hover{
			background-color: #CDECFA;
		}
		
	</style>
</head>
<body>

	
	<%@include file = "menu.jsp" %> 
	<div id="sign">
		<h2>SIGN UP</h2>
		<hr width="600">
		
		<form action="#" method="post" onsubmit="">
			
			<div id="formm">
				 <input type="text" id="id" placeholder="ID"> <button>중복확인</button> <br>
				 <input type="password" id="pw" placeholder="PASSWORD"><br>
				 <input type="password" id="pw_check" placeholder="PASSWORD CHECK"><br>
				<input type="text" id="name" placeholder="NAME"><br>
				 <input type="email" id="eamil" placeholder="EMAIL"><br>
				 <input type="text" id="phone" placeholder="PHONE"><br>
			</div>
			
			<fieldset>
				<legend>서비스 이용약관 동의</legend>
				<p class="agree">제 1장 총칙 <br> <br>
					제 1 조(목적)<br><br>
					본 약관은 국가공간정보포털 웹사이트(이하 "국가공간정보포털")가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 회원과 국가공간정보포털의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>
					제 2 조(약관의 효력과 변경)<br><br>
				1. 국가공간정보포털은 이용자가 본 약관 내용에 동의하는 경우, 국가공간정보포털의 서비스 제공 행위 및 회원의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. <br>
				2. 국가공간정보포털은 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여 현행약관과 함께 국가공간정보포털의 초기화면에 그 적용일 7일 이전부터 적용 전일까지 공지합니다. 단, 회원에 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 국가공간정보포털은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.<br>
				3. 변경된 약관은 국가공간정보포털 홈페이지에 공지하거나 e-mail을 통해 회원에게 공지하며, 약관의 부칙에 명시된 날부터 그 효력이 발생됩니다. 회원이 변경된 약관에 동의하지 않는 경우, 회원은 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우는 약관 변경에 대한 동의로 간주됩니다.<br>
					<br> 이하생략 <br>
				</p>
			</fieldset>
			<input type="checkbox" id="checkbox"> 위의 이용약관에 동의합니다. <br>
		
				<input type="submit" value="가입" id="submit">
				
		</form>
	
	</div>
</body>
</html>