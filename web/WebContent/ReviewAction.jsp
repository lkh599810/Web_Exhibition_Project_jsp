<%@page import="project.Review"%>
<%@page import="project.ReviewDao"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="ReviewDao.*" %>
<%@ page import="Reivew.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
    
    <%
    
    request.setCharacterEncoding("UTF-8");
    
    int reviewNum = request.getParameter("Num");
    int reviewExNum = request.getParameter("ExNum");
    String reviewUserID = request.getParameter("ID");
    
    ReviewDao dao = ReviewDao.getinstance();
    Review review = new Review();
    
    
    int result=dao.DeleteReview(reviewNum);
    
    if(result == 1){
    	
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('삭제 성공')");
		script.println("location.href ='sangsebogi.jsp'");
		script.println("</script>");
    	
    }
    else{
    	
    	PrintWriter script = response.getWriter();
    	script.println("<script>");
    	script.println("alert('삭제 실패')");
		script.println("history.back()");
		script.println("</script>");
    }
    
    		
    %>
    
</body>    
</html>    