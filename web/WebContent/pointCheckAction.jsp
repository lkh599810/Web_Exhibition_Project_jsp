<%@page import="single.Pay"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");



int usePoint = Integer.parseInt(request.getParameter("point"));

String userID = (String) session.getAttribute("userID");
//로그인 안되어있으면 실행

	//정보 불러오기

	 PointDAO dao = PointDAO.getInstance();
	 Pay pay = Pay.getInstance();
	
	int result = dao.pointCheck(userID,usePoint);
	
	if(result==1){ //사용가능
		if(pay.price<usePoint){ //사용 포인트가 티켓 가격보다 높으면
			response.sendRedirect("payment.jsp?check=1&usepoint="+pay.price); //티켓 가격 보내기
		}
		else{
			response.sendRedirect("payment.jsp?check=1&usepoint="+usePoint);
		}
	}
	else if(result==0){ //사용불가 (보유포인트보다 큰숫자 입력함)
		
		response.sendRedirect("payment.jsp?check=0");
	}
	else{ //db 오류
		response.sendRedirect("payment.jsp?check=-1");
	} 


%>