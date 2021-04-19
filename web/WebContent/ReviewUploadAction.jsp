<%@page import="java.io.PrintWriter"%>
<%@page import="project.Review"%>
<%@page import="project.ReviewDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		request.setCharacterEncoding("UTF-8");
	
		String reviewUserID = request.getParameter("Userid");
		int reviewExNum = request.getParameter("ExNum");
		int reviewNum = request.getParameter("Num");
		
		ReviewDao dao = ReviewDao.getinstance();
		
		int result = dao.UploadReview(reviewNum);
		
		if( result == 1 ){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('등록 성공')");
			script.println("location.href ='sangsebogi.jsp'");
			script.println("</script>");
		}
		else{
			PrintWriter script = response.getWriter();
	    	script.println("<script>");
	    	script.println("alert('로그인 해주세요')");
			script.println("history.back()");
			script.println("</script>");
	    }
		
		
	%>

</body>
</html>