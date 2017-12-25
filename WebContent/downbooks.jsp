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
<title>下架书信息</title>
</head>
<body>
	<tbody>
			<c:if test="${ empty  requestScope.saledlrs}">
				<tr>
					<td colspan="3">没有书籍信息</td>
				</tr>
			</c:if>
			<c:if test="${ not  empty  requestScope.saledlrs}">
				<c:forEach items="${  requestScope.saledlrs }" var="dwbks">
					<tr>
						<td>${dwbks.bknm }</td>
						<td>${dwbks.uptm }</td>
						<td>${dwbks.dwtm }</td></br>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>

</body>
</html>