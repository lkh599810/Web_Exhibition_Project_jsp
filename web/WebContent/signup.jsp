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
			font-family: "�������";
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
				 <input type="text" id="id" placeholder="ID"> <button>�ߺ�Ȯ��</button> <br>
				 <input type="password" id="pw" placeholder="PASSWORD"><br>
				 <input type="password" id="pw_check" placeholder="PASSWORD CHECK"><br>
				<input type="text" id="name" placeholder="NAME"><br>
				 <input type="email" id="eamil" placeholder="EMAIL"><br>
				 <input type="text" id="phone" placeholder="PHONE"><br>
			</div>
			
			<fieldset>
				<legend>���� �̿��� ����</legend>
				<p class="agree">�� 1�� ��Ģ <br> <br>
					�� 1 ��(����)<br><br>
					�� ����� ���������������� ������Ʈ(���� "����������������")�� �����ϴ� ��� ����(���� "����")�� �̿����� �� ����, ȸ���� ������������������ �Ǹ�, �ǹ�, å�ӻ��װ� ��Ÿ �ʿ��� ������ �������� �������� �մϴ�.<br><br>
					�� 2 ��(����� ȿ�°� ����)<br><br>
				1. ������������������ �̿��ڰ� �� ��� ���뿡 �����ϴ� ���, ������������������ ���� ���� ���� �� ȸ���� ���� ��� ������ �� ����� �켱������ ����˴ϴ�. <br>
				2. ������������������ ����� ������ ���, �������� �� ���������� ����Ͽ� �������� �Բ� ������������������ �ʱ�ȭ�鿡 �� ������ 7�� �������� ���� ���ϱ��� �����մϴ�. ��, ȸ���� �Ҹ��ϰ� ��������� �����ϴ� ��쿡�� �ּ��� 30�� �̻��� ���� �����Ⱓ�� �ΰ� �����մϴ�. �� ��� ������������������ ���� �� ����� ���� �� ������ ��Ȯ�ϰ� ���Ͽ� ȸ���� �˱� ������ ǥ���մϴ�.<br>
				3. ����� ����� ���������������� Ȩ�������� �����ϰų� e-mail�� ���� ȸ������ �����ϸ�, ����� ��Ģ�� ��õ� ������ �� ȿ���� �߻��˴ϴ�. ȸ���� ����� ����� �������� �ʴ� ���, ȸ���� ������ ȸ������� ���(ȸ��Ż��)�� �� ������, ����� ����� ȿ�� �߻��Ϸκ��� 7�� �̳��� �ź��ǻ縦 ǥ������ �ƴ��ϰ� ���񽺸� ��� ����� ���� ��� ���濡 ���� ���Ƿ� ���ֵ˴ϴ�.<br>
					<br> ���ϻ��� <br>
				</p>
			</fieldset>
			<input type="checkbox" id="checkbox"> ���� �̿����� �����մϴ�. <br>
		
				<input type="submit" value="����" id="submit">
				
		</form>
	
	</div>
</body>
</html>