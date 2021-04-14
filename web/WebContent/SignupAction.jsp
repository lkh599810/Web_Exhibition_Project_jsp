<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.*" %>
<%@ page import="dto.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%
    //정보 불러오기
    request.setCharacterEncoding("UTF-8");
    
    String formID = request.getParameter("id");
    String formPW = request.getParameter("pw");
    String formName = request.getParameter("name");
    String formEmail = request.getParameter("email");
    String formPhone = request.getParameter("phone");
    
    
    //객체 불러와서 새 회원 저장
    MemberDAO dao = MemberDAO.getInstance();
    
    Member member = new Member();
    
    member.setId(formID);
    member.setPw(formPW);
    member.setUserName(formName);
    member.setUserEmail(formEmail);
    member.setUserPhone(formPhone);
    
    int result = dao.SignUp(member);
    
    
    //현재 날짜
    SimpleDateFormat format1 = new SimpleDateFormat ("yyyy.MM.dd");
    Date time = new Date();
    String today = format1.format(time);
    
    
    PointDAO dao2 = PointDAO.getInstance();
    
    Point point = new Point();
    
    point.setPointUserID(formID);
    point.setPointDate(today);
    point.setPointReason("회원가입");
    point.setPoint(+1000);
	
    int result2 = dao2.inoutPoint(point);
    
       
    if(result==1 && result2==1){

        response.sendRedirect("login.jsp");
    }
    if(result2==-1){ //포인트 오류
    	PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('포인트 DB오류')");
		script.println("history.back()");
		script.println("</script>");
    }
    else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입 DB오류')");
		script.println("history.back()");
		script.println("</script>");
	}
    
    %>