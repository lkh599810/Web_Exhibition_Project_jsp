<%@page import="DTO.*"%>
<%@page import="DAO.*"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<%
		request.getParameter("UTF-8"); //form들 안의 input id를 바로 받을수있는건가? 이것만 써주면? ==>name 을 받아오는것. id가아니라.
		
		String realFolder="C:/Users/sijae/git/web/web/WebContent/images";
		
		MultipartRequest multi = new MultipartRequest(request, realFolder, 1024*1024*10,"UTF-8",new DefaultFileRenamePolicy() );		
		
		
		String exPost=multi.getFilesystemName("exPost");
		String exName= multi.getParameter("exName");  	
		String exStart=multi.getParameter("exStart");
		String exEnd=multi.getParameter("exEnd");
		Integer exPrice=  Integer.parseInt(multi.getParameter("exPrice")); 	
		String exMap= multi.getParameter("exMap");
		String exContent= multi.getParameter("exContent"); 
		String exPoto1= multi.getFilesystemName("exPoto1");
		String exPoto2= multi.getFilesystemName("exPoto2");
		String exPoto3= multi.getFilesystemName("exPoto3");
		
		
		ExhibitionDAO dao= ExhibitionDAO.getinstance();
		Exhibition exhibition= new Exhibition();
		
		exhibition.setExPost(exPost);
		exhibition.setExName(exName);
		exhibition.setExStart(exStart);
		exhibition.setExEnd(exEnd);
		exhibition.setExPrice(exPrice);
		exhibition.setExMap(exMap);	
		exhibition.setExContent(exContent);
		exhibition.setExPoto1(exPoto1);
		exhibition.setExPoto2(exPoto2);
		exhibition.setExPoto3(exPoto3);

		dao.addexhibition(exhibition);
//		int result =  dao.addexhibition(exhibition);
		
//		if(result==1){
			
//			alert('');
			
//		}else{
			
			
//		}
		
		response.sendRedirect("exhibitionList.jsp");
		
		
		
	
	%>
	

</body>
</html>