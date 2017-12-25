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
<title>个人信息</title>
</head>
<body>
	<form action="user_update" method="post">
		<caption>个人信息列表</caption></br>
					<input  name= "unm"  value="${sessionScope.user.unm}"  readonly="readonly"/></br>
					<input  name= "rnm"  value="${sessionScope.user.rnm}"  readonly="readonly"/></br>
					<input  name= "pwd"  value="${sessionScope.user.pwd}"  readonly="readonly"/></br>
					<input  name= "unb"  value="${sessionScope.user.unb}"  readonly="readonly"/></br>
					<input  name= "utel"  value="${sessionScope.user.utel}"  readonly="readonly"/></br>
					<input  name= "uqq"  value="${sessionScope.user.uqq}"  readonly="readonly"/></br>
					<input  name= "usx"  value="${sessionScope.user.usx}"  readonly="readonly"/></br>
					<input  name= "unat"  value="${sessionScope.user.unat}"  readonly="readonly"/></br>
					<input  name= "uadd"  value="${sessionScope.user.uadd}"  readonly="readonly"/></br>
					<input  name= "umail"  value="${sessionScope.user.umail}"  readonly="readonly"/></br>
					<input  name= "col"  value="${sessionScope.user.col}"  readonly="readonly"/></br>
					<input  name= "maj"  value="${sessionScope.user.maj}"  readonly="readonly"/></br>
					<input name="uid" value="${sessionScope.user.uid}"  type="hidden"/>
					<a id="a">不可修改</a>
		<input type="button" value="修改" onclick="check()"/>
		<input id="submit" type="submit" value="确认" />
	</form>
	<a href="home.jsp">返回首页</a>
	
	<script type="text/javascript">
	function check(){
		//document.getElementById("1").readOnly=false;
		//$("1").attr("readOnly",false);
		var txtN =document.getElementsByTagName("input");
		for(i=0;i<txtN.length;i++){ 
			if(txtN[i].type=="text"){ 
			txtN[i].removeAttribute("readOnly");  
				} 
			}
		//obj.removeAttribute("readOnly"); 
		document.getElementById("a").innerHTML="可以修改";
	}
	</script>

</body>
</html>