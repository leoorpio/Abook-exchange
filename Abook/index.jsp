<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style type="text/css">
body{background-image:url("pic/bg.PNG");}
</style>
<html>
    <head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>A BOOK</title>
        <!-- Bootstrap -->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/site.css" rel="stylesheet">
        <script type="text/javascript" src="js/jquery.min.js"></script>
    </head>
    
    <body>
        <script src="js/bootstrap.js"></script>
        <!--导航-->
        <div class="navbar navbar-default ">
            <div class="navbar-header" navbar-fixed-top="">
                <!-- .navbar-toggle样式用于toggle收缩的内容,即：nav-collapse collapse 样式所在的元素 -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse ">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- 确保无论是宽屏还是窄屏，navbar-brand都会显示 -->
                <a class="navbar-brand" href="index.jsp"><img src="pic/logo.png" width="100px" height="35px"></a>
            </div>
            <!-- 屏幕宽度小于768像素时，该div内的内容默认都会隐藏（通过单击icon-bar所在的图标， 可以再展开）；大于768像素时默认显示
            -->
            <div class="collapse navbar-collapse navbar-responsive-collapse ">
                <ul class="nav navbar-nav">
                    <li class="">
                        <a href="index.jsp">主页</a>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
							你好，${sessionScope.Username} 我的ABook<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="mybooks.jsp">我的书库</a></li>
								<li><a href="#">我的交换</a></li>
								<li><a href="#">个人信息</a></li>
								<li><a href="message.jsp">我的消息</a></li>
							<!--省略菜单 -->
							</ul>
                    </li>
                    <li>
                        <a href="index_visitors.jsp">注销</a>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
            </div>
        </div>
        <!--首页图片-->
        <div class="carousel slide" id="fullcarousel-example" data-interval="5000"
        data-ride="carousel">
            <div class="carousel-inner">
                <div class="item">
                    <img src="pic/PIC1.jpg">
                    <div class="carousel-caption">
                        <h2>ABook</h2>
                        <p>这里有的不只是书</p>
                    </div>
                </div>
                <div class="item active">
                    <img src="pic/PIC2.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
                <div class="item">
                    <img src="pic/PIC3.jpg">
                    <div class="carousel-caption">
                        <h2>Title</h2>
                        <p>Description</p>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#fullcarousel-example" data-slide="prev"><i class="icon-prev fa fa-angle-left"></i></a>
            <a class="right carousel-control" href="#fullcarousel-example" data-slide="next"><i class="icon-next fa fa-angle-right"></i></a>
        </div>
        <div align="center">
            <img src="pic/bookimg.png">
        </div>
        <hr>
        
        <!--书籍-->
        <main class="main" role="main">
            <div class="container">
                <div class="row">
                <!-- 重复的地方 -->
                	<c:forEach var="allbooks" items="${applicationScope.togetAllBooKs}">
	                   <div class="col-xs-12 col-md-4">
	                        <div id="box">
	                            <article>
	                                <h4 class="post-title">《${allbooks.name }》</h4>
	                                <h5 class="post-title">${allbooks.author }</h5>
	                                <div align="center">
	                                   <a href="<c:url value="bookInfo.view?BookID=${allbooks.bookid}"/>" target="_blank"">
	                                   		<img src="libraryPic/${allbooks.pictureName }" class="img-rounded" height="210px" width="140px">
	                                   </a>
	                                </div>
	                                <div id="head-pic">
	                                    <img src="pic/tx1.jpg" width="50px">
	                                    <h6>${allbooks.owner }</h6>
	                                </div>
	                            </article>
	                            <div>
	                                <p class="indent"><small>${allbooks.review}</small></p>
	                            </div>
	                        </div>
	                    </div>
	                 </c:forEach>
	         <!-- 结束的地方 -->
                </div> 
            </div>
        </main>
        <footer class="main-footer">
            <div class="containter">
                <div>
                    <div class="col-md-7 col-md-offset-1 col-xs-12">Our Team： Tao Jilin Yang Chi Yang Xu Shi Xin Bai Xiaochen</div>
                    <div class="col-md-3 col-xs-12">联系我们：15505160000</div>
                </div>
            </div>
        </footer>
    </body>

</html>