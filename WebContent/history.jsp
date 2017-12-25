<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	//style="display:none"
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>浏览过的人</title>
</head>
<body>
	<a >人名</a></tr><a >浏览时间</a></br>
	<%String uid = "uid" ;%>
	<%String unm = "unm" ;%>
	<%String currentDate = "currentDate" ;%>
	<%for (int i=0;i<10;i++){ 
	uid="uid"+String.valueOf(i); 
	unm="unm"+String.valueOf(i); 
	currentDate="currentDate"+String.valueOf(i); %>
	<a>第<%=i %>行</a>
	<a id=<%=uid %> style="display:none">用户id</a>
	<a id=<%=unm %> style="display:none">无姓名</a>
	<a id=<%=currentDate %> style="display:none">日期不明</a></br>
	<%} %>

</body>
</html>
<script>
	var uid = new Array();
	var unm = new Array();
	var currentDate = new Array();
	var strCookie=document.cookie; 
	var arrCookie=strCookie.split(";");
	
	//document.getElementById("uid"+i).innerHTML="121212121212";
	//alert("uid"+3);
		//alert("cookie:"+strCookie)
		//alert("共"+arrCookie.length+"条记录");
	for(var i=0;i<arrCookie.length;i++){ 
		//alert("第"+i+"条记录");
		var arrCookie1=arrCookie[i].split("||"); 
		//alert("分组后："+arrCookie1.length);
		//alert("arrCookie1[1]:"+arrCookie1[1]);
		for(var j=0;j<arrCookie1.length;j++){
			var arr=arrCookie1[j].split("="); 
		//alert("arrCookie1[j]:"+arrCookie1[j]);
		//alert("arr[1]:"+arr[1]);
		//alert("arr[0]:"+arr[0]);
			if("uid"==arr[1]){ 
			uid[i]=arr[0];
			document.getElementById("uid"+i).style.display = "block";
			document.getElementById("uid"+i).innerHTML="uid:"+uid[i];
			document.getElementById("uid"+i).href="user_get.action?uid="+uid[i];
			//alert("uid"+uid[i]);
			} 
			if("unm"==arr[1]){ 
				unm[i]=arr[0];
				document.getElementById("unm"+i).style.display = "block";
				document.getElementById("unm"+i).innerHTML="unm:"+unm[i];
				//alert("unm"+unm[i]);
				} 
			if("currentDate"==arr[1]){ 
				currentDate[i]=arr[0];
				document.getElementById("currentDate"+i).style.display = "block";
				document.getElementById("currentDate"+i).innerHTML="currentDate:"+currentDate[i];
				//alert("currentDate"+currentDate[i]);
				} 
		} 
	}
	
	
</script>