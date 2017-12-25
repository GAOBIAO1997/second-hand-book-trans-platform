<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
        request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    %>
<% %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home</title>
</head>
<body>
	<h1>welcome home</h1>
	<a href="book/booksale.jsp">我要卖书</a>
	<a href="book/bookbuy.jsp">我要买书</a>
	<a href="book/show.jsp">个人信息</a>
	<a href="book/book_find">随便看看</a>
	<a href="home_show">售书信息</a>
	<a href="login.jsp">返回登录</a>
	<a href="book/history.jsp">历史信息</a>
	<a href="down_find?uid=${ sessionScope.uid }">售书完成信息</a>
</body>
</html>