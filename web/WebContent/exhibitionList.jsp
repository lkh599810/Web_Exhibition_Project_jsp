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
			background-color:	#323232;
			color: white;
			font-family: "나눔고딕";
		}
		section{
 			width: 1000px;
	 		margin: 50px auto;
			text-align: center;
			padding: 0px 20px;
		}

		/*메인메뉴*/
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
			text-shadow: -1px 0 #0096ff, 0 1px #0096ff, 1px 0 #0096ff, 0 -1px #0096ff;
		}
		table td{
			padding: 5px;
		}
		#after{
			background-color : #646464;
			color : white;
			border-radius: 10px;
			width: 50px; 
		}
		#after:hover{
			background-color: #CDECFA;
			color : black;
		}
		#ticket h2{
			margin-top: 15px;
			margin-bottom: 15px;
		}
		.tr td{
			font-size: 13px;
			padding: 20px;
			border-bottom: dotted 1px white;
		}



	</style>
</head>
<body>


	<%@include file = "menu.jsp" %> 
	<section>

		<div class="container" id="ticket">

			<h2 class="h2">전시회 목록 수정</h2>
			<hr width="750">

			<table class="table table-hover">

				<tr id="head"> 
					<th width="145">전시회 명</th>
					<th width="245">전시기간</th>
					<th width="100">상태</th>
				</tr>

				<tr class="tr">
					<td>Team LAB</td>
					<td>2020.10.12 ~ 2021.01.06</td>
					<td>전시중</td>
					<%//사용 후 후기 미작성 시 %>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){    //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>여행갈까요</td>
					<td>2020.05.16 ~ 2020.08.12</td>
					<td>전시중</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){    //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>	
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>전시중</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){    //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>	
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>전시중</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){    //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>종료예정</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){    //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>	
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>종료예정</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){  //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>		
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>종료예정</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){  //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>퓰리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>종료예정</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){  //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>
					<button id="after" onclick="button_event();">삭제</button>
					</td>
				</tr>

				<tr class="tr">
					<td>풀리처 사진전</td>
					<td>2020.03.10 ~ 2020.06.15</td>
					<td>종료</td>
					<td><a href=""><button id="after">수정</button></a></td>
					<td>					
					<script type="text/javascript">

					<!--

					function button_event(){

					if (confirm("정말 삭제하시겠습니까??") == true){  //확인

					    document.form.submit();

					}else{   //취소

					    return;
					}
					}
					//-->

					</script>	
					<button id="after" onclick="button_event();">삭제</button>
					</td>
			</table>
		</div>

	</section>



</body>
</html>
