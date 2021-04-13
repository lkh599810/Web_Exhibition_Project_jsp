<%@page import="java.io.PrintWriter"%>
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
		
		Integer exNum=Integer.parseInt(request.getParameter("exNum"));
		
		
		ExhibitionDAO dao= ExhibitionDAO.getinstance();
		Exhibition exhibition= new Exhibition();
		
		int result=dao.deleteexhibition(exNum);
		
		
		if(result==1){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('삭제 성공')");
			script.println("location.href ='exhibitionList.jsp'");
			script.println("</script>");
			
			
			
		}else{
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('삭제 실패')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	
		
	
	%>
	

</body>
</html>