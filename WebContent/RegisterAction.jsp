<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		
		if (userID != null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�̹� �α����� �Ǿ��ֽ��ϴ�.')");
			script.println("location.href = 'Main.jsp'");
			script.println("</script>");
		}
		if(user.getUserID() == null || user.getUserPassword() == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�Է��� ���� �ʾҽ��ϴ�.')");
			script.println("history.back()");
			script.println("</script>");
		} else{
			UserDAO userDAO = new UserDAO();
			int result = userDAO.register(user);
			if(result == -1){
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�̹� �����ϴ� ���̵��Դϴ�.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else{
				session.setAttribute("userID", user.getUserID());
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("location.href = 'Main.jsp'");
				script.println("</script>");
			}
		}
		
	%>
</body>
</html>