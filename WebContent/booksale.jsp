<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>提交售书信息</title>
</head>
<body>
	<form action="books_sale" method="post">
		学院:<input name="col" value="col"/></br>
		专业:<input name="maj" value="maj"/></br>
		年级:<input name="grd" value="grd"/></br>
		书名:<input name="bknm" value="bknm"/></br>
		数量:<input name="sup" value="3"/></br>
		uid:<input name="uid" value="${sessionScope.user.uid}" />
		<input name="uptm" id="date"/>
		目标价格:<input name="prc" value="10"/>元</br>
		说明:<input name="msg" value="msg"/></br>
		<input type="submit" value="确定"/>
	</form>
	<script>
		var date = new Date();
	    var seperator1 = "-";
	    var month = date.getMonth() + 1;
	    var strDate = date.getDate();
	    if (month >= 1 && month <= 9) {
	        month = "0" + month;
	    }
	    if (strDate >= 0 && strDate <= 9) {
	        strDate = "0" + strDate;
	    }
	    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate;
	    var t1 = document.getElementById('date');//根据id获取input节点
	    t1.value = currentdate;//把a的值在input中直接显示
	</script>
</body>
</html>