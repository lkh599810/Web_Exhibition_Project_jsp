<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
 
    
    request.setCharacterEncoding("UTF-8");
    
    String formID = request.getParameter("id");
    String formPW = request.getParameter("pw");
    String formName = request.getParameter("name");
    String formEmail = request.getParameter("email");
    String formPhone = request.getParameter("phone");
    
    MemberDAO dao = MemberDAO.getInstance();
    
    Member member = new Member();
    
    member.setId(formID);
    member.setPw(formPW);
    member.setUserName(formName);
    member.setUserEmail(formEmail);
    member.setUserPhone(formPhone);
    
    int result = dao.UpdateMember(member);
    
    if(result==1){
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('수정이 완료되었습니다.')");
		script.println("</script>");

        response.sendRedirect("userUpdate.jsp");
    }
    else {
  		PrintWriter script = response.getWriter();
  		script.println("<script>");
  		script.println("alert('DB오류')");
  		script.println("history.back()");
  		script.println("</script>");
  	}
    
    
    
    
    
    
    %>