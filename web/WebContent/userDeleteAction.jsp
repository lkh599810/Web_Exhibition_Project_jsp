<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    //정보 불러오기
    request.setCharacterEncoding("UTF-8");
    
    String formPW = request.getParameter("pw");
    
    
    
    //객체 불러와서 새 회원 저장
    MemberDAO dao = MemberDAO.getInstance();
    Member member = new Member();
    
    
    member.setPw(formPW);
    
    int result = dao.DeleteMember( (String) session.getAttribute("userID"),formPW);
    
       
    if(result==1){
    	PrintWriter script = response.getWriter();
		
        response.sendRedirect("login.jsp");
    }
    else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 다시 확인해주세요.')");
		script.println("history.back()");
		script.println("</script>");
	}
    
    %>