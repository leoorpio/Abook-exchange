<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>我的收藏</title>
</head>

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/site.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>

<body>
<script src="https:// code.jquery.com/jquery.js"></script>
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
                <a class="navbar-brand" href="index.html"><img src="pic/logo.png" width="100px" height="35px"></a>
            </div>
            <!-- 屏幕宽度小于768像素时，该div内的内容默认都会隐藏（通过单击icon-bar所在的图标， 可以再展开）；大于768像素时默认显示
            -->
            <div class="collapse navbar-collapse navbar-responsive-collapse ">
                <ul class="nav navbar-nav">
                    <li class="">
                        <a href="#">主页</a>
                    </li>
                    <li>
                        <a href="#">登陆/注册</a>
                    </li>
                    <li class="dropdown">
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
							我的ABook<b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="#">我的书库</a></li>
								<li><a href="#">我的交换</a></li>
								<li><a href="#">我的信息</a></li>
								<li><a href="#">我的消息</a></li>
							<!--省略菜单 -->
							</ul>
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





<main class="main" role="main">
	<div class="container">
                <div class="row">
                    <div class="col-md-6 col-xs-12">
                        <h1>我的收藏</h1>
                    </div>
                    <div class="col-md-5 col-xs-12">
                        <h3 align="right" class="text-muted">书籍8本</h3>
                    </div>
                </div>
                <hr>
			<div class="row">
				<div class="col-md-3">
					<div id="boxsk" align="center">	
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>						
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>						
					</div></div>




									<div class="col-md-3">
					<div id="boxsk" align="center">	
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>						
					</div></div>
				<div class="col-md-3">
					<div id="boxsk">
						<h5>书籍ID：001</h5>					
						<img src="pic/book2.jpg" height="200">
						<h4>《Inspiration》</h4>						
					</div></div>




			</div>
	</div>
</main>











<footer class="main-footer">
	<div class="containter">
		<div>
					<div class="col-md-7 col-md-offset-1 col-xs-12">Our Team： Tao Jilin       Yang Chi       Yang Xu         Shi Xin       Bai Xiaochen
					</div>

					<div class="col-md-3 col-xs-12">联系我们：15505160000</div>
		</div>
	</div>
</footer> 









</body>
</html>