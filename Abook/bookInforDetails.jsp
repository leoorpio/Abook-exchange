<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<style type="text/css">
	body{background-image:url("pic/bg.PNG");}
</style>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>书籍详情</title>
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/site.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
	<script src="https:// code.jquery.com/jquery.js"></script>
	<script src="js/bootstrap.js"></script>
	<!--导航-->

	<div class="navbar navbar-default ">
		<div class="navbar-header" navbar-fixed-top="">
			<!-- .navbar-toggle样式用于toggle收缩的内容,即：nav-collapse collapse 样式所在的元素 -->
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target=".navbar-responsive-collapse ">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<!-- 确保无论是宽屏还是窄屏，navbar-brand都会显示 -->
			<a class="navbar-brand" href="index.jsp"><img src="pic/logo.png"
				width="100px" height="35px"></a>
		</div>
		<!-- 屏幕宽度小于768像素时，该div内的内容默认都会隐藏（通过单击icon-bar所在的图标， 可以再展开）；大于768像素时默认显示
            -->
		<div class="collapse navbar-collapse navbar-responsive-collapse ">
			<ul class="nav navbar-nav">
				<li class=""><a href="index.jsp">主页</a></li>
				<li class="dropdown"><a data-toggle="dropdown"
					class="dropdown-toggle" href="#">你好，${sessionScope.Username} 我的ABook<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="mybooks.jsp">我的书库</a></li>
						<li><a href="#">我的交换</a></li>
						<li><a href="#">个人资料</a></li>
						<li><a href="message.jsp">我的消息</a></li>
						<!--省略菜单 -->
					</ul></li>
				<li><a href="index_visitors.jsp">注销</a></li>
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
				<div id="box2">
					<div>
						<h4 class="post-title">《${sessionScope.Name}》</h4>
					</div>
					<br />
					<div class="row">
						<div class="col-md-6 col-xs-6">
							<img src="libraryPic/${sessionScope.Picture}" class="img-rounded" height="300px" width="200px"/>
						</div>
						<div class="col-md-6 col-xs-6">
							<br /> <br /> <br />
							<p>
								作者：${sessionScope.Author}<br /> <br />
								出版社：${sessionScope.Publisher}<br /> <br />
								页数：${sessionScope.Pages}<br /> <br />
								册数：全${sessionScope.Volumes}册<br /> <br />
								ISBN:${sessionScope.ISBN}<br /> <br />
							</p>
						</div>
					</div>
					<br /> <br />
					<div class="row">
						<div class="col-md-4 col-xs-4">
							<td><img src="pic/heart.png"></td>
						</div>
						<div class="col-md-4 col-xs-4">
							<td><img src="pic/collect.png"></td>
						</div>
						<div class="col-md-4 col-xs-4">
							<td><img src="pic/turn.png"></td>
						</div>

					</div>


				</div>
			</div>
			<div class="col-md-6 col-xs-12">

				<div id="box2">
					<div>
						<img src="pic/tx1.jpg" width="50px">
						<h6>${sessionScope.Owner}</h6>
					</div>

					<div id="boxp box">
						<div align="left">
							<img src="pic/yh1.png">
						</div>
						<div>
							<p>${sessionScope.Review}</p>
						</div>
						<div align="right">
							<img src="pic/yh2.png">
						</div>
					</div>
					<br />

		<!-- 选择交换的下拉框 -->
					<div align="center">
						<img src="pic/pinglun.png">
						<button type="button" class="btn btn-default" data-toggle="modal" data-target=".bs-example-modal-sm">申请交换</button>
						<div class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="	myLargeModalLabel">
			  				
				    			<div class="modal-content">
				    		 		<form method="get" action="applyForExchange">
				    		 			<h2>请选择你想用来评论&交换的个人书籍</h2>
				    		 				<select name="Mybook" size="10">
				    		 					<c:forEach var="allbooks" items="${applicationScope.mybook}">
				    		 						<option value="${allbooks.bookid}">${allbooks.name}</option>
				    		 					</c:forEach>
				    		 				</select>
				    		 				<input type="hidden" name="thisbookid" value="${sessionScope.BooKID}" />
				    		 				<input type="hidden" name="thisbookname" value="${sessionScope.Name }"/>
				    		 				<input type="submit" value="确认" />
				    		 		</form>
		      								
		    					</div>
	 					 
						</div>
					</div>
			<!-- 结束 -->
				</div>
			</div>
		</div>
		<div class="row" align="center">
			<img src="pic/bookimg.png">
		</div>
		<hr>
		<!--==========这里是评论==============-->
		<div>
			<!--==========这里是评论重复区域模板==============-->
			<c:forEach var="remarkbook" items="${applicationScope.remark}">
				<div class="col-md-6 col-xs-12">
					<div id="box3">
						<div class="row">
							<div class="col-md-4 col-xs-4">
								<div>
									<h6>《${remarkbook.name }》</h6>
								</div>
								<br />
								<div>
									<img src="libraryPic/${remarkbook.picture }" height="150"
										width="100px">
								</div>
								<div>
									<img src="pic/heart.png">
									<h6>2341</h6>
								</div>
							</div>
							<div>
								<img src="pic/tx2.jpg" width="40px">${remarkbook.owner }
							</div>
							<div id="remarkbook">
								<p>${remarkbook.review }</p>
							</div>
						</div>
					</div>
				</div>
		</div>
		</c:forEach>
		<!-- 结束区 -->
		</div>
	</div>
	</div>
	</main>

	<footer class="main-footer">
		<div class="containter">
			<div>
				<div class="col-md-7 col-md-offset-1 col-xs-12">Our Team： Tao
					Jilin Yang Chi Yang Xu Shi Xin Bai Xiaochen</div>

				<div class="col-md-3 col-xs-12">联系我们：15505160000</div>
			</div>
		</div>
	</footer>
</body>
</html>