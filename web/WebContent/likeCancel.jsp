<%@page import="DTO.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%@include file="menu.jsp" %>
	
	<%
		// if likedao에 exnum ,userid가 같은게 없으면 add, 같은게 있으면 likedao의 컨디션 불러내기
		
		request.getParameter("UTF-8");
	
		
		String likeUserID=request.getParameter("likeUserID");
		int likeExNum=Integer.parseInt(request.getParameter("exNum"));  //이 세개를 못받았을 경우 1
		 
		int exNum=likeExNum;
		
/* 		out.print(likeUserID );
		out.print(likeExNum ); */
		
		
		
		LikeDAO dao=LikeDAO.getinstance();
		
		Like like=new Like();
		
	
		like=dao.getlike(likeUserID, likeExNum); //dao.getlike
		
		
			if(like.getLikeCondition()==1){
				
				dao.updatelikeCondition(like);
				
			}
			
			
		
			
		
		
		
		response.sendRedirect("myLike.jsp?likeUserID="+likeUserID); 
	
		
	%>


</body>
</html>