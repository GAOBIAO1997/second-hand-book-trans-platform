<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>二手书交易主页</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css">                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css_main/bootstrap.min.css">                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css_main/hero-slider-style.css">                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css_main/magnific-popup.css">                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="css_main/templatemo-style.css">                                   
    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>
    <body>
        <!-- Content -->
        <div class="cd-hero">
            <!-- Navigation -->        
            <div class="cd-slider-nav">
                <nav class="navbar">
                    <div class="tm-navbar-bg">
                        <a class="navbar-brand text-uppercase" href="#"><i class="fa fa-send-o tm-brand-icon"></i>欢迎来到二手书主页</a>
                        <button class="navbar-toggler hidden-lg-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        <div class="collapse navbar-toggleable-md text-xs-center text-uppercase tm-navbar" id="tmNavbar">
                            <ul class="nav navbar-nav">
                                <li class="nav-item active selected">
                                    <a class="nav-link" href="#0" data-no="1">我要买书 <span class="sr-only"></span></a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="2">我要卖书</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="3">随便看看</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="4">我的信息</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="5">我的售书</a>
                                </li>
                            </ul>
                        </div>                        
                     </div>                        
                </nav>
            </div> 
            <ul class="cd-hero-slider">  <!-- autoplay -->
                <li class="selected">
                    <div class="cd-full-width">
                        <div class="container-fluid js-tm-page-content " data-page-no="1">
                            <div class="cd-bg-video-wrapper" data-video="video/moving-cloud">
                            <!-- video element will be loaded using jQuery -->
                            </div> <!-- .cd-bg-video-wrapper -->     
                            	<div class="col-xs-12">
                                    <div class="tm-flex tm-2-col-container-2">
                                        <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                                    <form action="book_buyall" method="post" >
                                            <h2 class="tm-text-title">按专业搜索</h2>
                                               <label id ="label">学院</label>
			<select id ="1"  onchange="yf()"  type="text" name="col" value="col" class="form-control">   
					<option value="计算机与通信工程学院" class="form-control"  >计算机与通信工程学院</option> 
					<option value="石油工程学院" class="form-control">石油工程学院</option> 
					<option value="地球科学与技术学院" class="form-control">地球科学与技术学院</option>  
			</select>
            <label id ="label1">专业</label>
			<select type="email" name="maj" value="maj" class="form-control" >   
					<option id = "2" value="软件工程" class="form-control">软件工程</option> 
					<option id = "3" value="通信工程" class="form-control">通信工程</option> 
					<option id = "4" value="物联网工程" class="form-control">物联网工程</option>  
					<option id = "5" value="计算机科学与技术" class="form-control">计算机科学与技术</option> 
			</select> 
<script type="text/javascript">
		function yf(){
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
			 else if(test=="地球科学与技术学院") 
			 {
				 document.getElementById("2").innerHTML="测绘专业";
				 document.getElementById("3").innerHTML="地质学专业";
				 document.getElementById("4").innerHTML="地球物理专业";
				 document.getElementById("5").innerHTML="资源勘查工程专业";				 
			 }		 
		}
</script>						
					年级:		
					<select id ="21" name="grd" type="text"  value="grd" class="form-control">   
						<option value="大一上" class="form-control">大一上</option> 
						<option value="大一下" class="form-control">大一下</option> 
						<option value="大二上" class="form-control">大二上</option> 
						<option value="大二下" class="form-control">大二下</option>  
						<option value="大三上" class="form-control">大三上</option> 
						<option value="大三下" class="form-control">大三下</option> 
						<option value="大四上" class="form-control">大四上</option> 
						<option value="大四下" class="form-control">大四下</option> 
			        </select>     
			            <br>
			            	<button class="btn btn-style-5" type="submit"><b>查询</b></button>
			            	</form>	
			           </div>
                    <div class="tm-bg-white-translucent text-xs-left tm-textbox tm-2-col-textbox-2 tm-textbox-padding">
                    <form action="book_buybook" method="post">
                    <h2 class="tm-text-title">按书名搜索</h2>
                                                           书名:	
                   	<input name="bknm" placeholder="请输入书名" type="text" class="form-control" /><br>
                    <button class="btn btn-style-5" type="submit"><b>查询</b></button>	
                    </form>
                    </div>
          		</div>
       		</div>
		</div>
	</div>
	</li>     
	<li>
       	<div class="cd-full-width">
			<div class="container-fluid js-tm-page-content" data-page-no="2">
				<div class="cd-bg-video-wrapper" data-video="video/red-flower">
                </div> 
					<div class="row">
						<div class="col-xs-12">
                          	<div class="tm-2-col-container tm-bg-white-translucent">
                               	<div class="row">
                         	       <div class="col-xs-12">
                                   <h2 class="tm-text-title">请填写售书信息       <i class="fa fa-4x fa-plane tm-home-fa"></i></h2> 
                                   </div>                                            
                                </div>
								<div class="row">                                          
				                <p class="tm-text">
		<form action="books_sale" method="post" >
            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">
			<label id ="label">学院</label>
			<select id ="11" onchange="mf()"  type="text" name="col" value="col"class="form-control">   
					<option value="计算机与通信工程学院" class="form-control">计算机与通信工程学院</option> 
					<option value="石油工程学院" class="form-control">石油工程学院</option> 
					<option value="地球科学与技术学院" class="form-control">地球科学与技术学院</option>  
			</select>                 
            </div>
		<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">                                                        
            <label id ="label1">专业</label>
			<select type="email" name="maj" value="maj" class="form-control" >   
					<option id = "12" value="软件工程" class="form-control">软件工程</option> 
					<option id = "13" value="通信工程" class="form-control">通信工程</option> 
					<option id = "14" value="物联网工程" class="form-control">物联网工程</option>  
					<option id = "15" value="计算机科学与技术" class="form-control">计算机科学与技术</option> 
			</select> 
<script type="text/javascript">	
		function mf(){
			var  myselect=document.getElementById("11");
		 	var index=myselect.selectedIndex ;  
		 	var test=myselect.options[index].value;
			 if(test=="计算机与通信工程学院") {
				 document.getElementById("12").innerHTML="软件工程";
				 document.getElementById("13").innerHTML="通信工程";
				 document.getElementById("14").innerHTML="物联网工程";
				 document.getElementById("15").innerHTML="计算机科学与技术";
			 }
			 else  if(test=="石油工程学院")
			 {
				 document.getElementById("12").innerHTML="石油工程";
				 document.getElementById("13").innerHTML="海洋油气工程";
				 document.getElementById("14").innerHTML="油气储运专业";
				 document.getElementById("15").innerHTML="船舶与海洋工程";
			 }
			 else  if(test="地球科学与技术学院")
			 {
				 document.getElementById("12").innerHTML="测绘专业";
				 document.getElementById("13").innerHTML="地质学专业";
				 document.getElementById("14").innerHTML="地球物理专业";
				 document.getElementById("15").innerHTML="资源勘查工程专业";				 
			 }		 
		}
</script>
   		</div>                            
           <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">                                                                                                      
				年级:		
				<select id ="21" name="grd" type="text"  value="grd" class="form-control">   
					<option value="大一上" class="form-control">大一上</option> 
						<option value="大一下" class="form-control">大一下</option> 
						<option value="大二上" class="form-control">大二上</option> 
						<option value="大二下" class="form-control">大二下</option>  
						<option value="大三上" class="form-control">大三上</option> 
						<option value="大三下" class="form-control">大三下</option> 
						<option value="大四上" class="form-control">大四上</option> 
						<option value="大四下" class="form-control">大四下</option> 
			    </select>     
            </div>                                      
            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">                                                        
                                   书名:   
            <input type="text" name="bknm" placeholder="请输入书名" class="form-control"  required
            
   /><br>
            </div>
            <div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-left">
                                    数量：   <input type="text" name="sup" placeholder="请输入数量"class="form-control"  required onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>
            </div>
            <input name="uid" value="${sessionScope.uid}" type="hidden" />
			<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 tm-form-group-right">                                                        
                                    目标价格:   <input type="text" name="prc" placeholder="请输入价格" class="form-control"  required onkeyup="if(isNaN(value))execCommand('undo')" onafterpaste="if(isNaN(value))execCommand('undo')"/>
            </div>   
            
            <input  name="uptm"  id ="date" type="hidden"/>
            
            <div class="form-group">
                                    说明:   <textarea id="contact_message" name="msg" placeholder="请输入书籍信息" class="form-control" rows="5" maxlength=10 required></textarea>
            </div> 
			<button class="btn btn-style-5" type="submit"><b>提交</b></button>
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
var t1 = document.getElementById('date');//根据id获取input节点
t1.value = currentdate;//把a的值在input中直接显示
</script>
</p>
</div>
</div>
</div>
</div>
</div>
</div> <!-- .cd-full-width -->
</li>
<!-- Page 3 -->
<li>
	<div class="cd-full-width">
		<div class="container-fluid js-tm-page-content" data-page-no="3">
        	<div class="cd-bg-video-wrapper" data-video="video/sunset-cloud">
            <!-- video element will be loaded using jQuery -->
            </div> <!-- .cd-bg-video-wrapper -->
               	<div class="tm-contact-page">
              		<div class="row">
	                	<div class="col-xs-12">
                        	<div class="tm-2-col-container tm-bg-white-translucent">
								<div class="row">
                             		<div class="col-xs-12">
                                    <h2 class="tm-text-title">随便看看书库  </h2> 
                                    </div>                                            
                               	</div>
 								<table class="table table-striped">
								<thead>
									<tr>
									<th>书名</th>
									<th>数量</th>	
										
									<th>目标价格</th>	
									<th>说明</th>		
									<th>详情</th>		
									</tr>
								</thead>
				<a href="book_find">再来一组</a>
				<tbody>
				<c:if test="${ empty  sessionScope.lrsfind}">
				<tr>
					<td colspan="3">没有书籍信息</td>
				</tr>
			</c:if>
			<c:if test="${ not  empty  sessionScope.lrsfind}">
				<c:forEach items="${  sessionScope.lrsfind }" var="r">
						<tr>
							<td>${r.bknm }</td>
							<td>${r.sup }</td>
							<td>${r.prc }</td>
							<td>${r.msg }</td>
						<td><a href="user_get.action?uid=${r.uid }">查看详情</a><br></td>
						</tr>
					
				</c:forEach>
			</c:if>
		</tbody>
	</table>
	
	<!-- END HTML -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${ basePath}js_main/jquery-min-1.12.4.js"></script>	
	
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
</div>
</div>
</div>
</div>    
</div> <!-- .container-fluid -->
</div> <!-- .cd-full-width -->
</li>
<li>
<div class="cd-full-width">
					<div class="container-fluid js-tm-page-content" data-page-no="4">
						<div class="cd-bg-video-wrapper" data-video="video/padaut-bee">
							<!-- video element will be loaded using jQuery -->
						</div>
						<!-- .cd-bg-video-wrapper -->
						<div class="row">
							<div class="col-xs-12">
								<div class="tm-flex tm-3-col-container">
									<div class="tm-3-col-textbox tm-bg-white-translucent">
										<div class="text-xs-left tm-textbox tm-textbox-padding">
											<h2 class="tm-text-title">个人信息</h2>
											<form action="user_update" method="post">
												<!--7.14 ***************************************************************************************-->
												<span></span> <input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="uid" value="${sessionScope.user.uid}" type="hidden" />
												<span>用户名</span> <input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="unm" value="${sessionScope.user.unm}" /><br> <span>姓名</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="rnm" value="${sessionScope.user.rnm}" /><br> <span>密码</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="pwd" value="${sessionScope.user.pwd}" /><br> <span>学号</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="unb" value="${sessionScope.user.unb}" /><br> <span>学院</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="col" value="${sessionScope.user.col}" /><br> <span>专业</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="maj" value="${sessionScope.user.maj}" /><br> <span>性别</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="usx" value="${sessionScope.user.usx}" /><br> <span>民族</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="unat" value="${sessionScope.user.unat}" /><br> <span>手机</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="utel" value="${sessionScope.user.utel}" /><br>
												<span>QQ</span> <input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="uqq" value="${sessionScope.user.uqq}" /><br> <span>邮箱</span>
												<input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="umail" value="${sessionScope.user.umail}" /><br>
												<span>地址</span> <input
													style="border: 0px solid #ccc; background: rgba(0, 0, 0, 0); padding: 4px 0px; border-radius: 2px; padding-left: 3px"
													name="uadd" value="${sessionScope.user.uadd}" /><br>

												<input class="btn btn-style-5" id="submit" type="submit"
													value="确认" />
											</form>
											<!--7.14 ***************************************************************************************-->
										</div>
									</div>

									<!-- 我卖出的书*************************************************************************************** -->
									<div class="tm-3-col-textbox tm-bg-white-translucent">
										<div class="text-xs-left tm-textbox tm-textbox-padding">

											<h2 class="tm-text-title">我卖出的书</h2>
													<table class="table table-striped">
														<thead>
															<tr>
																<th>书名</th>
																<th>上架时间</th>
																<th>下架时间</th>
															</tr>
														</thead>
														<tbody>
															<c:if test="${ empty  sessionScope.saledlrs}">
																<tr>
																	<td colspan="3">您还没有卖出书呦~</td>
																</tr>
															</c:if>
															<c:if test="${ not  empty  sessionScope.saledlrs}">
																<c:forEach items="${  sessionScope.saledlrs }"
																	var="dwbks">
																	<tr>
																		<td>${dwbks.bknm }</td>
																		<td>${dwbks.uptm }</td>
																		<td>${dwbks.dwtm }</td>
																	</tr>
																</c:forEach>
															</c:if>
														</tbody>
													</table>
													
													<!-- END HTML -->
													<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
													<script src="${ basePath}js_main/jquery-min-1.12.4.js"></script>
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
										</div>
									</div>
									<!-- 我浏览过的书************************************************************** -->
									<div class="tm-3-col-textbox tm-bg-white-translucent">
										<div class="text-xs-left tm-textbox tm-textbox-padding">
											<h2 class="tm-text-title">最近浏览过的人</h2>
											<table class="table table-striped">
												<thead>
													<tr>
														<th>浏览的人</th>
														<th>浏览时间</th>
													</tr>
												</thead>

												<tbody>
													<%String uid = "uid" ;%>
													<%String unm = "unm" ;%>
													<%String currentDate = "currentDate" ;%>
													<%for (int i=0;i<10;i++){ 
	uid="uid"+String.valueOf(i); 
	unm="unm"+String.valueOf(i); 
	currentDate="currentDate"+String.valueOf(i); %>
													<tr>
														<a id=<%=uid %> style="display: none">用户id</a>
														<td><a id=<%=unm %> style="display: none">无姓名</a></td>
														<td><a id=<%=currentDate %> style="display: none">日期不明</a></td>
													</tr>
													<%} %>

												</tbody>
											</table>


										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</li>
<li>
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
			document.getElementById("uid"+i).innerHTML="uid:"+uid[i];
			//alert("uid"+uid[i]);
			} 
			if("unm"==arr[1]){ 
				unm[i]=arr[0];
				document.getElementById("unm"+i).style.display = "block";
				document.getElementById("unm"+i).innerHTML=""+unm[i];
				document.getElementById("unm"+i).href="user_get.action?uid="+uid[i];
				//alert("unm"+unm[i]);
				} 
			if("currentDate"==arr[1]){ 
				currentDate[i]=arr[0];
				document.getElementById("currentDate"+i).style.display = "block";
				document.getElementById("currentDate"+i).innerHTML=""+currentDate[i];
				//alert("currentDate"+currentDate[i]);
				} 
		} 
	}
	
	
</script>
<div class="cd-full-width">
	<div class="container-fluid js-tm-page-content" data-page-no="5">
		<div class="cd-bg-video-wrapper" data-video="video/sunset-loop">
        <!-- video element will be loaded using jQuery -->
        </div> <!-- .cd-bg-video-wrapper -->
          	<div class="tm-contact-page">
           		<div class="row">
              		<div class="col-xs-12">
                    	<div class="tm-2-col-container tm-bg-white-translucent">
							<div class="row">
                            	<div class="col-xs-12">
                                <h2 class="tm-text-title">我的书库  </h2> 
                                </div>                                            
                            </div>
						    <c:if test="${ empty  sessionScope.lrssaledbook}">
								<a>您还没有正在销售的书呦~</a>
							</c:if>
							<c:if test="${ not  empty  sessionScope.lrssaledbook}">
								<table class="table table-striped">
								<thead>
								<tr>
									<th>书名</th>
									<th>数量</th>	
									<th>上架时间</th>
									<th>目标价格</th>	
									<th>说明</th>
									<th>下架</th>
									<th>出售完成</th>
								</tr>
								</thead>
								<tbody>
		<c:forEach items="${  sessionScope.lrssaledbook }" var="r">
		<tr>
			<form action="booksale_update" method="post">
			<td>${r.bknm} </td>
			<td>${r.sup} </td>
			<td>${r.uptm} </td>
			<td>${r.sid} </td>
			<td>${r.prc} </td>
		    <td><a href="booksale_delete?sid=${r.sid} ">下架</a></td>
			<td><a href="booksale_saled?sid=${r.sid} ">出售完成</a></td>
	<!-- 	书名：<input name="bknm" value="${r.bknm}"  readonly="readonly"/>
			数量:<input name="sup" value="${r.sup}" readonly="readonly" />
			<input name="sid" value="${r.sid} " style="display:none" />
			上架时间：<input name="uptm" value="${r.uptm}" readonly="readonly"/>
			目标价格:<input name="prc"  value="${r.prc}" readonly="readonly"/>元
			说明:<input name="msg"  value="${r.msg}" readonly="readonly"/>
			<input  type="button" value="修改" onclick="check()"/>
			<input type="submit" value="确定"/>
	 -->	
			
			
	
			</form>
			</tr>
		</c:forEach>
		
	</c:if>
							</tbody>
							</table>
				<input name="sid" value="${r.sid} " style="display:none" />
			<input  type="button" value="修改" onclick="check()"/>
			<input type="submit" value="确定"/>

	<!-- END HTML -->
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${ basePath}js_main/jquery-min-1.12.4.js"></script>
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
	var t1 = document.getElementById('dwtm');//根据id获取input节点
	t1.value = currentdate;//把a的值在input中直接显示
	</script>
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
</div>
</div>
</div>
</div>    
</div>
</div> <!-- .cd-full-width -->
</li>
</ul> <!-- .cd-hero-slider -->
<footer class="tm-footer">
<div class="tm-social-icons-container text-xs-center">
<a href="#" class="tm-social-link"></a>
 	</div>
    </footer>
</div> <!-- .cd-hero -->
<!-- Preloader, https://ihatetomatoes.net/create-custom-preloading-screen/ -->
		<!-- load JS files -->
        <script src="js_main/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js_main/tether.min.js"></script> 				 <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
        <script src="js_main/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js_main/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js_main/masonry.pkgd.min.js"></script>          <!-- Masonry (http://masonry.desandro.com/) -->
        <script src="js_main/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->  
<script>
function adjustHeightOfPage(pageNo) {
var offset = 80;
var pageContentHeight = $(".cd-hero-slider li:nth-of-type(" + pageNo + ") .js-tm-page-content").height();
if($(window).width() >= 992) { offset = 120; }
else if($(window).width() < 480) { offset = 40; }
// Get the page height
var totalPageHeight = 15 + $('.cd-slider-nav').height()
+ pageContentHeight + offset
+ $('.tm-footer').height();
// Adjust layout based on page height and window height
if(totalPageHeight > $(window).height()) 
{
 	$('.cd-hero-slider').addClass('small-screen');
   	$('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", totalPageHeight + "px");
}
else 
{
  	$('.cd-hero-slider').removeClass('small-screen');
  	$('.cd-hero-slider li:nth-of-type(' + pageNo + ')').css("min-height", "100%");
 	}
}
/*
 	 Everything is loaded including images.
*/
$(window).load(function(){
adjustHeightOfPage(1); // Adjust page height
/* Gallery One pop up
-----------------------------------------*/
$('.gallery-one').magnificPopup({
 	delegate: 'a', // child items selector, by clicking on it popup will open
 	type: 'image',
  	gallery:{enabled:true}                
});
	/* Gallery Two pop up
    -----------------------------------------*/
$('.gallery-two').magnificPopup({
  	delegate: 'a',
    type: 'image',
    gallery:{enabled:true}                
});
/* Collapse menu after click 
-----------------------------------------*/
$('#tmNavbar a').click(function(){
$('#tmNavbar').collapse('hide');
adjustHeightOfPage($(this).data("no")); // Adjust page height       
});
/* Browser resized 
-----------------------------------------*/
$( window ).resize(function() {
var currentPageNo = $(".cd-hero-slider li.selected .js-tm-page-content").data("page-no");
// wait 3 seconds
setTimeout(function() {
adjustHeightOfPage( currentPageNo );
}, 1000);
});
// Remove preloader (https://ihatetomatoes.net/create-custom-preloading-screen/)
$('body').addClass('loaded');
});
</script>    
<a href="login.jsp">返回登录</a>        
</body>
</html>