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
		request.getParameter("UTF-8"); //form�� ���� input id�� �ٷ� �������ִ°ǰ�? �̰͸� ���ָ�? ==>name �� �޾ƿ��°�. id���ƴ϶�.
		
		Integer exNum=Integer.parseInt(request.getParameter("exNum"));
		
		
		ExhibitionDAO dao= ExhibitionDAO.getinstance();
		Exhibition exhibition= new Exhibition();
		
		int result=dao.deleteexhibition(exNum);
		
		
		if(result==1){
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('���� ����')");
			script.println("location.href ='exhibitionList.jsp'");
			script.println("</script>");
			
			
			
		}else{
			
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('���� ����')");
			script.println("history.back()");
			script.println("</script>");
		}
		
	
		
	
	%>
	

</body>
</html>