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
<title>个人详情页</title>
</head>
<body>
<a>欢迎来到个人详情页</a></br>
	<a>${requestScope.user.col}</a>
	<a>${requestScope.user.maj}</a>
	
	<a>${requestScope.user.umail}</a>
	<a>${requestScope.user.unat}</a>
	
	<a>${requestScope.user.unb}</a>
	
	<a>${requestScope.user.uqq}</a>
	<a>${requestScope.user.usx}</a>
	<a>${requestScope.user.utel}</a>
	<a>${requestScope.user.uadd}</a>
	<a>${requestScope.user.rnm}</a>
	<a>unm:</a>
	<a id="unm">${requestScope.user.unm}</a></br>
	<a>uid:</a>
	<a id="uid">${requestScope.user.uid}</a></br>
	<a href="book/home.jsp">返回首页</a>

</body>
</html>

<script type="text/javascript">
function getNowFormatDate() {
	    var date = new Date();
	    var seperator1 = "-";
	    var seperator2 = ":";
	    var month = date.getMonth() + 1;
	    var strDate = date.getDate();
	    if (month >= 1 && month <= 9) {
	        month = "0" + month;
	    }
	    if (strDate >= 0 && strDate <= 9) {
	        strDate = "0" + strDate;
	    }
	    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
	            + " " + date.getHours() + seperator2 + date.getMinutes()
	            + seperator2 + date.getSeconds();
	    return currentdate;
	} 
	 
	var uid =  document.getElementById('uid').innerText;
	var unm =  document.getElementById('unm').innerText;
	var currentDate = getNowFormatDate();
	var recode = "recode";
	if(unm==""){
		unm="no name";
	}
	if(uid==""){
		uid="no nameid";
	}
	document.cookie=currentDate+'='+'currentDate'+'||'+uid+'='+'uid'+'||'+unm+'='+'unm'+'||'+';';
	//document.cookie=uid+"="+"uid"+";";
	//document.cookie=unm+"="+"unm"+";";
	//document.cookie="||";
	
</script>