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
<title>售书信息</title>
</head>
<body>

	<c:if test="${ empty  sessionScope.lrs}">
		<a>没有售书数据</a>
	</c:if>
	<c:if test="${ not  empty  sessionScope.lrs}">
		<c:forEach items="${  sessionScope.lrs }" var="r">
			<form action="booksale_update" method="post">
			书名：<input name="bknm" value="${r.bknm}"  readonly="readonly"/>
			数量:<input name="sup" value="${r.sup}" readonly="readonly" />
			<input name="sid" value="${r.sid}" />
			上架时间：<input name="uptm" value="${r.uptm}" readonly="readonly"/>
			目标价格:<input name="prc"  value="${r.prc}" readonly="readonly"/>元
			说明:<input name="msg"  value="${r.msg}" readonly="readonly"/>
			<input  type="button" value="修改" onclick="check()"/>
			<input type="submit" value="确定"/>
			<a href="booksale_delete?sid=${r.sid} ">下架</a>
			<a href="booksale_saled?sid=${r.sid} ">出售完成</a>
			</form>
		</c:forEach>
		
	</c:if>
	<a href="home.jsp">返回首页</a>
<script type="text/javascript">
	function check(){
		
		var id = document.getElementsByTagName("input")
		for(i=0;i<id.length;i++){ 
			//alert(id[i].name);
			if(id[i].name=="msg"||id[i].name=="prc"){
				id[i].removeAttribute("readOnly"); 
			}
		
		}
	}
</script>
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
	    var t1 = document.getElementById('dwtm');//根据id获取input节点
	    t1.value = currentdate;//把a的值在input中直接显示
	</script>
</body>
</html>