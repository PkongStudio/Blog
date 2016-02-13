<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html>
<head>
	<title>登录</title>
	<meta charset=utf-8>
	<style type="text/css">
	*{font-family: "微软雅黑"}
		</style>
</head>
<body>
<form name="input" action="/Blog/index.php/Admin/Admin/login" method="post">
<lable for="username">账号：</label>
<input type="text" name="username" id="username" />
<lable for="password">密码：</lable>
<input type="password" name="password" id="password" />
<input type="submit" value="登录"><a href="#">


</body>
</html>