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
		section{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
		}
		
		<%//����޴�%>
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
		
		
		<%//���θ޴�%>
		#ticket{
			display:inline-block; 
			width: 780px;
		}
		hr{
			margin: 30px auto;
		}
		
		table{
			margin: 0px auto;
		}
		table #head{
			height: 30px;
			font-size: 17px;
		}
		table td{
			padding: 5px;
		}
		#after{
			background-color : #646464;
			color : white;
			border-radius: 10px;
			width: 70px; 
		}
		#after:hover{
			background-color: #CDECFA;
			color : black;
		}
		
	</style>
</head>
<body>

	
	<%@include file = "menu2.jsp" %> 
	<section>
		<nav id="sub_menu">
			<h3>ȸ������</h3>
			<ul id="user_info">
				<li><a href="userUpdate.jsp"> �� ȸ������</a></li>
				<li><a href="userDelete.jsp"> �� ȸ��Ż��</a></li>
			</ul>
			<h3>Ƽ������</h3>
			<ul id="tic_info">
				<li><a href="myTicket.jsp"> �� ���� Ƽ�� </a></li>
				<li><a href="myLike.jsp"> �� ���� ����</a></li>
			</ul>
		</nav>
	
		<div class="container" id="ticket">
		
			<h2>���� Ƽ��</h2>
			<hr width="750">
			
			<table class="table table-hover">
				<tr id="head"> 
					<th width="130">��������</th>
					<th width="180">����ȸ ��</th>
					<th width="40">����</th>
					<th width="90">�� ����</th>
					<th width="130">��������</th>
					<th width="90">����</th>
					<th width="90">���</th>
				</tr>
				<tr>
					<td>2020.10.12</td>
					<td>�����Ǿ�¼��</td>
					<td>2</td>
					<td>24,000</td>
					<td>2020.10.15</td>
					<td>���</td>
					<%//��� �� �ı� ���ۼ� �� %>
					<td><button id="after">�ı� �ۼ�</button></td>
				</tr>
			</table>
		</div>
		
	</section>
	
		
	
</body>
</html>