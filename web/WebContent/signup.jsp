<%@page import="dao.MemberDAO"%>
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
			background-color :	#000000;
			color : white;
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
			background-color : #000000;
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
		#formm #id {
			width: 210px;
			margin-right: 10px;
		}
			
		/*중복확인 버튼*/
		#formm button {
			padding: 5px;
			height: 35px;
			background-color: #323232;
			color : white;
		}
		#formm button:hover{
			background-color: #CDECFA;
			color : #000000;
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
		#idAlert{
			font-size: 12px;
			padding-right: 130px;
		}
		
	</style>
</head>
<body>
<%

	int checked = -2; //초기값 (중복값)
	if(request.getParameter("check")!=null){ 
		checked= Integer.valueOf(request.getParameter("check"));
	}
	
	String okID = ""; //초기값 (중복 아닌경우 아이디 가져오기)
	if(request.getParameter("okID")!=null){ 
		okID= request.getParameter("okID");
	}
	
%>
	<script type="text/javascript">
		function idCheck(id) {
			//아이디 한글 못받게
			var reg = /^[a-zA-Z0-9]*$/;
			
			if(!reg.test(join.id.value)){
				alert("영문/숫자 조합만 가능합니다.");
				return false;
			}
			if(!join.id.value){
				alert("아이디 입력해주세요");
				return false;
			}
			if( id ){
				location.href = 'IDCheckAction.jsp?id='+id;
				
			}
			
		} 
	
	
		function checkForm() {
			if(!join.id.value){
				alert("아이디 입력해주세요");
				return false;
			}
			
			//아이디 중복확인 했는지
			if( join.idCh_result.value==1 ){ //1= 중복값
				alert("아이디 중복확인을 해주세요");
				return false;
			}
			
			if( !join.pw.value ){
				alert("비밀번호 입력해주세요");
				return false;
			}
			if( join.pw.value != join.pw_check.value ){
				alert("비밀번호가 동일하지 않습니다");
				return false;
			}
			if( !join.name.value ){
				alert("성명을 입력해주세요");
				return false;
			}
			if( !join.email.value ){
				alert("이메일을 입력해주세요");
				return false;
			}
			if( !join.phone.value ){
				alert("연락처 입력해주세요");
				return false;
			}	
			if(!join.checkbox.checked){
				alert("이용약관에 동의해주세요");
				return false;
			} 
		}
		
	</script>

	<%@include file = "menu.jsp" %> 
	<div id="sign">
		<h2>SIGN UP</h2>
		<hr width="600">
		
		<form id="join" method="post" action="SignupAction.jsp" onsubmit="return checkForm()">
			
			<div id="formm">
				<% if(checked==0){%>
					<label id="idAlert"> 사용 가능한 아이디 입니다. </label> <br>
					 <input type="text" name="id" id="id" value="<%=okID %>" placeholder="ID">
				<%}else if(checked==1){%>
					<label id="idAlert"> 중복 된 아이디가 있습니다. </label> <br>
					 <input type="text" name="id" id="id" placeholder="ID">
				<%}else if(checked==-1){%>
					<label id="idAlert"> db오류 </label> <br>
				<%}else{ %>
					<br>
					<input type="text" name="id" id="id" placeholder="ID">
					<%} %>
					<input type="hidden" name="idCh_result" value="<%=checked%>"> <button type="button" onclick="idCheck(this.form.id.value)">Check</button> <br>
				 <input type="password" name="pw" placeholder="PASSWORD"><br>
				 <input type="password" name="pw_check" placeholder="PASSWORD CHECK"><br>
				<input type="text" name="name" placeholder="NAME"><br>
				 <input type="email" name="email" placeholder="EMAIL"><br>
				 <input type="text" name="phone" placeholder="PHONE"><br>
			</div>
			
			<fieldset>
				<legend>서비스 이용약관 동의</legend>
				<p class="agree">제 1장 총칙 <br> <br>
					제 1 조(목적)<br><br>
					제 2 조(약관의 효력과 변경)<br><br>
				1. 국가공간정보포털은 이용자가 본 약관 내용에 동의하는 경우, 국가공간정보포털의 서비스 제공 행위 및 회원의 서비스 사용 행위에 본 약관이 우선적으로 적용됩니다. <br>
				2. 국가공간정보포털은 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여 현행약관과 함께 국가공간정보포털의 초기화면에 그 적용일 7일 이전부터 적용 전일까지 공지합니다. 단, 회원에 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 국가공간정보포털은 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.<br>
				3. 변경된 약관은 국가공간정보포털 홈페이지에 공지하거나 e-mail을 통해 회원에게 공지하며, 약관의 부칙에 명시된 날부터 그 효력이 발생됩니다. 회원이 변경된 약관에 동의하지 않는 경우, 회원은 본인의 회원등록을 취소(회원탈퇴)할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이내에 거부의사를 표시하지 아니하고 서비스를 계속 사용할 경우는 약관 변경에 대한 동의로 간주됩니다.<br>
					<br> 이하생략 <br>
				</p>
			</fieldset>
			<input type="checkbox" name="checkbox"> 위의 이용약관에 동의합니다. <br>
		
			<input type="submit" value="가입" id="submit">
				
		</form>
	
	</div>
</body>
</html>