<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="com.javaex.vo.GuestbookVo" %>
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="java.util.List" %>

<%

GuestbookDao gbDao = new GuestbookDao();

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="add.jsp" method="post">
		<table border=1>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea name="content" cols="60" rows="5" style="resize: none;"></textarea></td>
			</tr>
			<tr>
				<td colspan="4"><button type="submit">확인</button></td>
			</tr>
		</table>
	</form>
	
	<br>
	
	<%
	for (GuestbookVo g : gbDao.getList()) {
	%>
	
	<table border=1>
		<tr>
			<td><%=g.getNo()%></td>
			<td><%=g.getName()%></td>
			<td><%=g.getDate()%></td>
			<td><a href="./deleteForm.jsp?no=<%=g.getNo() %>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=g.getContent()%></td>
		</tr>
	</table>
	
	<br>
	
	<%
	}
	%>
	
<%-- 	
	<%
	for (int i = 0; i < gbDao.getList().size(); i++) {
	%>
	
	<table border=1>
		<tr>
			<td><%=gbDao.getList().get(i).getNo()%></td>
			<td><%=gbDao.getList().get(i).getName()%></td>
			<td><%=gbDao.getList().get(i).getDate()%></td>
			<td><a href="./deleteForm.jsp">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4"><%=gbDao.getList().get(i).getContent()%></td>
		</tr>
	</table>
	
	<br>
	
	<%
	}
	%>
	 --%>
</body>
</html>