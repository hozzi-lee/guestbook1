<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="java.util.List" %>

<%
request.setCharacterEncoding("UTF-8");

GuestbookDao gbDao = new GuestbookDao();

String name = request.getParameter("name");
String password = request.getParameter("password");
String content = request.getParameter("content");
// String date = request.getParameter("date");

GuestbookVo gbVo = new GuestbookVo(name, password, content);

gbDao.insert(gbVo);

response.sendRedirect("./addList.jsp");

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