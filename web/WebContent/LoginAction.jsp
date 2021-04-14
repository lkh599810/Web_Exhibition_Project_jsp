<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("UTF-8");

	//String userID = null;
	//로그인 세션 불러오기
	if(session.getAttribute("userID") != null){ //로그인 되어있으면
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인 되어있습니다.')");
		script.println("location.href = '../main.jsp'");
		script.println("</script>");
	}
%>
<%
//로그인 안되어있으면 실행

	//정보 불러오기
	
	String formID = request.getParameter("id");
	String formPW = request.getParameter("pw");
	

	MemberDAO dao = MemberDAO.getInstance();
	
	int result = dao.login(formID, formPW);
	
	if(result==1){
		session.setAttribute("userID", formID); //로그인 성공시 세션 저장
		response.sendRedirect("main.jsp");
	}
	else if(result==0){
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 다시 확인해주세요')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(result==-1){ //아이디 오류
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디를 다시 확인해주세요')");
		script.println("history.back()");
		script.println("</script>");
	}else { //db오류시
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('DB오류')");
		script.println("history.back()");
		script.println("</script>");
	}


%>