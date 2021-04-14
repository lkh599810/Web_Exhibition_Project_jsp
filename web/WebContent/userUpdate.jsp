<%@page import="dto.Member"%>
<%@page import="dao.MemberDAO"%>
<%@page import="java.io.PrintWriter"%>
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
		#updatetable{
			margin: 0 auto;
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
			margin: 15px 0; 
			
		}
	
		#formm .la{
			width: 150px;
			
		}
		#formm input:hover{
			border-bottom: 2px solid #1EA4FF;
		}
		#formm .id input:hover{
			border-bottom: 1px solid white;
		}
		#formm input:focus{
			outline: none;
		}
		
		input#submit{
			background-color : #646464;
			color : white;
			border : 1px solid black;
			border-radius: 10px;
			
			width: 120px;	
			height: 50px;	
			margin: 30px 0;
		}
		input#submit:hover{
			background-color: #CDECFA;
			color : black;
		}
		
		
		/*회원탈퇴 버튼*/
		#formm a{
			padding-top:10px;
			color : #d2d2d2;
			font-size: 12px;
		}
		
	</style>
</head>
<body>

	
	<%@include file = "menu.jsp" %> 
		<%
		
		if(userID==null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요한 서비스입니다.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		}
		else{
			Member member = new MemberDAO().GetMember(userID);
		
	%>
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
	
		<div class="container" id="userUpdate">
		
			<h2>회원정보 수정</h2>
			<hr width="750">
			
			<form action="userUpdateAction.jsp" method="post" onsubmit="" id="formm">
				<table id="updatetable">
					<tr>
						<td class="la"> <label>ID</label></td>
						<td> <input type="text" name="id" class="id" placeholder="ID" value="<%=member.getId() %>" readonly="readonly"> </td>
					</tr>
					<tr>
						<td class="la"> <label>PW</label></td>
						<td> <input type="password" name="pw" placeholder="PASSWORD"> </td>
					</tr>
					<tr>
						<td class="la"> <label>PW_CHECK</label></td>
						<td> <input type="password" name="pw_check" placeholder="PASSWORD CHECK"></td>
					</tr>
					<tr>
						<td class="la"> <label>NAME</label></td>
						<td><input type="text" name="name" value="<%=member.getUserName()%>" placeholder="NAME"> </td>
					</tr>
					<tr>
						<td class="la"> <label>EMAIL</label></td>
						<td> <input type="email" name="email" value="<%=member.getUserEmail()%>" placeholder="EMAIL"> </td>
					</tr>
					<tr>
						<td class="la"> <label>PHONE</label></td>
						<td> <input type="text" name="phone" value="<%=member.getUserPhone()%>" placeholder="PHONE"> </td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="수정" id="submit"></td>
					</tr>
					
					<tr>
						<td colspan="2"><a href="userDelete.jsp" id="dele"> 회원탈퇴</a> </td>
					</tr>
			</form>
			
			
		</div>
		
	</section>
	
		<%} %>
	
</body>
</html>