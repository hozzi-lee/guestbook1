<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="java.util.List" %>

<%

GuestbookDao gbDao = new GuestbookDao();

int no = Integer.parseInt(request.getParameter("no"));
String password = request.getParameter("password");

gbDao.delete(new GuestbookVo(no, password));

// response.sendRedirect("./addList.jsp");

%>

<!-- <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html> -->