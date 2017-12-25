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
<title>随便看看</title>
</head>
<body>
	<a href="book_find">再来一组</a>
	<tbody>
			<c:if test="${ empty  requestScope.lrs}">
				<tr>
					<td colspan="3">没有书籍信息</td>
				</tr>
			</c:if>
			<c:if test="${ not  empty  requestScope.lrs}">
				<c:forEach items="${  requestScope.lrs }" var="r">
					<tr>
						<td>${r.bknm }</td>
						<td>${r.sup }</td>
						<td>${r.msg }</td>
						<td>${r.prc }</td>
					</tr>
					<a href="user_get.action?uid=${r.uid }">查看详情</a></br>
				</c:forEach>
			</c:if>
		</tbody>
	

</body>
</html>