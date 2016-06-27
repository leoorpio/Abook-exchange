<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>MESSAGE |ABook.com</title>
</head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/site.css">
<link rel="stylesheet" type="text/css" href="css/add.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
</head>
	<style type="text/css">
		body{background-image:url("pic/bg.PNG");}
	</style>
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
								<li><a href="#">个人资料</a></li>
								<li><a href="message.html">我的消息</a></li>
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

	<main class="main" role="main">
	<div class="row">
		<div class="col-md-4 col-md-offset-4">
			<center>
				<h1>消息板</h1>
			</center>
		</div>
		<!-- test area -->
		<c:forEach var="message" items="${applicationScope.rbook}">
			<div class="col-md-8 col-md-offset-2">
				<ul class="list-group">
					<p>您好！关于您的图书：“《${message.bookname }》——书籍ID：${message.bookid}”，以下用户提出交换申请：</p>
					<li class="list-group-item"><img src="pic/pinglun.png"
						class="jiaohuanzhe" />
						<p>
							<b>${message.owner}</b>
						</p>
						<br />
						<div class="juti">
							<p>
								<i>时间：${message.datetime }</i>&emsp; 交换书籍： <i>《${message.name}》</i>&nbsp; 
								<a class="btn btn-sm btn-default" href="">查看详情</a> 
								<a class="btn btn-sm btn-default" href="">乐意交换</a>
							</p>
						</div></li>
				</ul>
			</div>
		</c:forEach>
		<!-- End -->
	</div>
	</main>

	<footer class="main-footer">
		<div class="containter">
			<div>
				<div class="col-md-7 col-md-offset-1 col-xs-12">Our Team： Tao
					Jilin | Yang Chi | Yang Xu | Shi Xin | Bai Xiaochen</div>

				<div class="col-md-3 col-xs-12">联系我们：15505160000</div>
			</div>
		</div>
	</footer>


</body>
</html>