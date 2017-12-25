<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>二手书查找界面</title>
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  
    <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="font-awesome-4.5.0/css/font-awesome.min.css">                
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      
    <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/hero-slider-style.css">                              
    <!-- Hero slider style (https://codyhouse.co/gem/hero-slider/) -->
    <link rel="stylesheet" href="css/magnific-popup.css">                                 
    <!-- Magnific popup style (http://dimsemenov.com/plugins/magnific-popup/) -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   
    <!-- Templatemo style -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>

    <body background="images/terrace.jpg">
        
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
                                    <a class="nav-link" href="#0" data-no="1">书籍信息 <span class="sr-only"></span></a>
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
                                        <h2 class="tm-text-title" >您查找的书籍信息   </h2>  
                                            </div>                                            
                                        </div>

                                        <div class="row">
                                            <p class="tm-text"><form action="../book_buy" method="post">
<div class="form-group col-xs-18 col-sm-18 col-md-8 col-lg-8 col-xl-8 ">
		
				<table class="table table-striped">
	
		<thead>
		    <th>书名</th>
		    <th>书籍编号</th>
			<th>余量</th>
			<th>说明</th>
			<th>价格</th>
			<th>卖家号</th>
		</thead>
                                                                                                   
    <tbody>
			<c:if test="${ empty  sessionScope.lrsbook}">
				<tr>
					<td colspan="3">没有书籍信息</td>
				</tr>
			</c:if>
			<c:if test="${ not  empty  sessionScope.lrsbook}">
				<c:forEach items="${  sessionScope.lrsbook }" var="r">
					<tr>
					    <td>${r.bknm}</td>						
						<td>${r.bkid }</td>
						<td>${r.sup }</td>
						<td>${r.msg }</td>
						<td>${r.prc }</td>
						<td><a href="user_get.action?uid=${r.uid }">查看详情</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
		</table>
		<input  class="btn btn-style-5"  type="button" value="返回" onclick="javascript:history.back(-1);"  right="100px" />
		</form></p>
                                                </div>
                                             </div>
                                            
                                            
                                     
  </div>
                                </div>

                            </div>

                        </div>   
                 
                </li>     
             
                               
            
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
        <script src="js/jquery-1.11.3.min.js"></script>         <!-- jQuery (https://jquery.com/download/) -->
        <script src="js/tether.min.js"></script> <!-- Tether for Bootstrap (http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h) --> 
        <script src="js/bootstrap.min.js"></script>             <!-- Bootstrap js (v4-alpha.getbootstrap.com/) -->
        <script src="js/hero-slider-main.js"></script>          <!-- Hero slider (https://codyhouse.co/gem/hero-slider/) -->
        <script src="js/masonry.pkgd.min.js"></script>          <!-- Masonry (http://masonry.desandro.com/) -->
        <script src="js/jquery.magnific-popup.min.js"></script> <!-- Magnific popup (http://dimsemenov.com/plugins/magnific-popup/) -->
        
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

</body>
</html>