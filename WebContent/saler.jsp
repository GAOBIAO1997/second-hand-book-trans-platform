<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>
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
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

    <body background="images/terrace4.jpg">
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
                                <li class="nav-item">
                                    <a class="nav-link" href="#0" data-no="6">卖家详细信息</a>
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
                            
                          
                                
                                <div class="row">

                                    <div class="col-xs-12">

                                       
                        <div class="tm-2-col-container tm-bg-white-translucent">

                                        <div class="row">
                                            <div class="col-xs-12">
                                        <h2 class="tm-text-title" >欢迎来到个人详情页   </h2>  
                                            </div>                                            
                                        </div>

                                        <div class="row">
                                            <p class="tm-text">
<div class="form-group col-xs-18 col-sm-18 col-md-8 col-lg-8 col-xl-8 ">

<span>昵称</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.unm}"  readonly="readonly"/><br>
<span>学院</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.col}"  readonly="readonly"/><br>
<span>专业</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.maj}"  readonly="readonly"/><br>
<span>姓名</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.rnm}"  readonly="readonly"/><br>
<span>学号</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.unb}"  readonly="readonly"/><br>
<span>性别</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.usx}"  readonly="readonly"/><br>
<span>民族</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.unat}"  readonly="readonly"/><br>
<span>邮箱</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.umail}"  readonly="readonly"/><br>
<span>QQ</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.uqq}"  readonly="readonly"/><br>
<span>手机</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.utel}"  readonly="readonly"/><br>
<span>地址</span>			<input  style="border:0px  solid #ccc ;background:rgba(0, 0, 0, 0) ;padding: 4px 0px; border-radius: 2px; padding-left:3px"    name= "unm"   value="${requestScope.user.uadd}"  readonly="readonly"/><br>
	
	<a id="unm" style="display:none">${requestScope.user.unm} </a></br>
	<a id="uid" style="display:none">${requestScope.user.uid}</a></br>																																				
	<input  class="btn btn-style-5"  type="button" value="返回" onclick="javascript:history.back(-1);"  right="100px" />
	
	
	</div>  
	</p>
                                                </div>
                                             </div>
                                            
                                            
                                     
  </div>
                                     
  </div>
                                </div>

                            </div>

                        </div>   
                 
                </li>     

               
	


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
        <div id="loader-wrapper">
            
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>

        </div>
        
        <!-- load JS files -->
        <script src="js_main/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js_main/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
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

</body>
</html>