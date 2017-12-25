<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>注册页面</title>
<style type="text/css">

.uidBox{
	background-image:url('images/uid.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.pwdBox{
	background-image:url('images/pwd.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.rpwdBox{
	background-image:url('images/rpwd.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.unmBox{
	background-image:url('images/unm.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.zhenshixingmingBox{
	background-image:url('images/zhenshixingming .png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.uidBox{
	background-image:url('images/uid.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.uantBox{
	background-image:url('images/uant.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.uaddBox{
	background-image:url('images/uadd.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.utelBox{
	background-image:url('images/utel.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	.qqBox{
	background-image:url('images/qq.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	
		.umailBox{
	background-image:url('images/umail.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	
	
	.yuanxiBox{
	background-image:url('images/yuanxi.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
		.sexBox{
	background-image:url('images/sex.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	
		.zhuanyeBox{
	background-image:url('images/zhuanye.png');
	background-repeat:no-repeat;
	padding-left:20px;
	}
	
	
form{
	display:inline;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar()
{ window.scrollTo(0,1); } 
</script>
<link href='//fonts.googleapis.com/css_reg?family=Yanone+Kaffeesatz:400,700' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css_reg?family=Montserrat:700,400' rel='stylesheet' type='text/css'>
<link href="css_reg/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css_reg/bootstrap.css" rel='stylesheet' type='text/css' media="all">
<script src="js_reg/jquery.min.js"></script>
<script type="text/javascript" src="js_reg/move-top.js"></script>
<script type="text/javascript" src="js_reg/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
</head>
<body>
	<div class="div-bor">
	<i class="icon-user"></i>
	<h1 align="center">用户注册页面</h1>
	<div id='date'><script>getdates();</script></div>
	<script language="javascript">
	function getdates()
	{
	var w_array=new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
	var d=new Date();
	var year=d.getFullYear();
	var month=d.getMonth()+1;
	var day=d.getDate();
	var week=d.getDay();
	var h=d.getHours();
	var mins=d.getMinutes();
	var s=d.getSeconds();
	if(month<10) month="0" + month
	if(day<10) month="0" + day
	if(h<10) h="0" + h
	if(mins<10) mins="0" + mins
	if(s<10) s="0" + s
	var shows="当前时间是： <span>" + year + "-" + month + "-" + day + " " + h + ":" + mins + ":" + s + " " + w_array[week] + "</span>";
	document.getElementById("date").innerHTML=shows;
	setTimeout("getdates()",1000);
	}
	getdates();
</script>
</div>
  <div class="banner-top">
		<h2></h2>
		<div class="banner-bottom">
		<form name="submit" action="user_add" method="post" onsubmit="javascript:return chkfrm(this);" >
		
		<label for="unm">昵称</label><br>
		<input name="unm" style="border-radius:5px" class="unmBox" type="text" placeholder="请输入用户名" ><br><!-- 用户名 -->
		<label for="pwd">密码</label><br>
		<input name="pwd" style="border-radius:5px" class="pwdBox" placeholder="请输入密码" type="password"id="pwd" /><br>
	    <label for="pwd1">确认密码</label><br>
		<input name="pwd1" style="border-radius:5px"  class="rpwdBox"  placeholder="请确认密码"type="password"id="pwd1" /><br>
		<label for="rnm">真实姓名</label><br>
	    <input name="rnm" style="border-radius:5px" class="zhenshixingmingBox" placeholder="请输入真实姓名"><br>
	    <label for="unb">学号</label><br>
		<input name="unb"  style="border-radius:5px" class="uidBox" placeholder="请输入学号" maxlength=10/><br>
		<label for="usx" class="sexBox" >性别</label>
		<td>
		<input type="radio" name="usx",id="man1" value="男" />
		<label for "man1">男</label>
		<input type="radio" name="usx",id="man2" value="女" />
		<label for "man2">女</label>
		</td>
		</br>
	 	<label for="unat">民族</label><br>
	 	<input name="unat"  style="border-radius:5px" class="uantBox"  placeholder="请输入民族" /><br>
		<label for="uadd">住址</label><br>
		<input name="uadd" style="border-radius:5px" class="uaddBox"  placeholder="请输入地址" /><br>
		<label for="utel">手机</label><br>
		<input name="utel"  style="border-radius:5px" class="utelBox" placeholder="请输入手机号"maxlength=11><br>
	 	<label for="uqq">QQ</label><br>
	    <input  name="uqq" style="border-radius:5px" class="qqBox"  placeholder="请输入QQ号" maxlength=10><br>
       	<label for="umail">邮箱</label><br>
	   	<input name="umail" style="border-radius:5px" class="umailBox" placeholder="请输入邮箱" type="email"><br>
		<label for="label" style="border-radius:5px" class="yuanxiBox">所在院系</label><br>
		<select id ="1" name="col" onchange="mf()">   
			<option value="计算机与通信工程学院">计算机与通信工程学院</option> 
			<option value="石油工程学院">石油工程学院</option> 
			<option value="地球科学与技术学院">地球科学与技术学院</option>  
		</select> 
		<br>
		<label for="label1"  class="zhuanyeBox">所在专业</label><br>
		<label id ="label1"></label>
		<select name="maj">   
					<option id = "2" value="软件工程">软件工程</option> 
					<option id = "3" value="通信工程">通信工程</option> 
					<option id = "4" value="物联网工程">物联网工程</option>  
					<option id = "5" value="计算机科学与技术">计算机科学与技术</option> 
		</select> 
<script type="text/javascript">
		function mf(){
			var  myselect=document.getElementById("1");
		 	var index=myselect.selectedIndex ;  
		 	var test=myselect.options[index].value;
			 if(test=="计算机与通信工程学院") {
				 document.getElementById("2").innerHTML="软件工程";
				 document.getElementById("3").innerHTML="通信工程";
				 document.getElementById("4").innerHTML="物联网工程";
				 document.getElementById("5").innerHTML="计算机科学与技术";
			 }
			 else  if(test=="石油工程学院")
			 {
				 document.getElementById("2").innerHTML="石油工程";
				 document.getElementById("3").innerHTML="海洋油气工程";
				 document.getElementById("4").innerHTML="油气储运专业";
				 document.getElementById("5").innerHTML="船舶与海洋工程";
			 }
			 else  if(test=="地球科学与技术学院")
			 {
				 document.getElementById("2").innerHTML="测绘专业";
				 document.getElementById("3").innerHTML="地质学专业";
				 document.getElementById("4").innerHTML="地球物理专业";
				 document.getElementById("5").innerHTML="资源勘查工程专业";
			 }
		}
</script>
		</br>
		记住我:<input name="rm" checked="checked" type="checkbox" /></br>
			<input id="registe"  value="${ requestScope.registe }" type="hidden"/><a id="show_registe" style="color: red"></a>
		<div  class="bnr-btn">
		<input type="submit"    value="注       册"/>
		</div>
	     <div class="bnr-btn">
		 <input type="reset" value="重       置">
	    </div>
	</form> 
<script language="javascript">
if(document.getElementById("registe").value == "1"){
	document.getElementById("show_registe").innerHTML="用户名已被注册";
}
function chkfrm(o){
   if(o.unm.value==''){
      alert("请输入您的昵称");
      return false;
   } if(o.pwd.value==''){
	      alert("请输入您的密码");
	      return false;
	   }
   if(o.pwd1.value==''){
	      alert("请确认您的密码");
	      return false;
	   }
   if(o.pwd1.value!=o.pwd.value){
	   alert("密码与确认密码不一致，请重新输入");
	   return false;
   }
   if(o.rnm.value==''){
      alert("请输入您的真实姓名");
      return false;
   }
 if(o.utel.value==''){
	      alert("请输入您的手机号码");
	      return false;
	   }
 if(document.getElementById("registe").value != "1"){
	 alert("注册成功！");
 }

 return true;
}
</script>
</body>
</html>