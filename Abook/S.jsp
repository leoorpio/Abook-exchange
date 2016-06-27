<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Refresh" content="3;url=bookInfo.view?BookID=${param.thisbookid}" />
<title>申请成功</title>
<style type="text/css">
	body{background-image:url("pic/bg.PNG");}
</style>
</head>
<body>
<div style="margin:20% 30% ">
	<p>朋友${requestScope.username}，你好，申请已提交，请耐心等待回复,5s后返回页面继续浏览</p>
</div>
</body>
</html>