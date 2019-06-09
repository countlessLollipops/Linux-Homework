<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>商品价格查询系统</title>
</head>
<body>
	<h1>登录操作</h1><br/>
	<form id="indexForm" name="indexForm" method="post" action="check.jsp">
	<table border="1">
		<tr>
			<td>登录ID：</td>
			<td><input type="text" name="username"></td>
		</tr>
		<tr>
			<td>登录密码</td>
			<td><input type="password" name="password"></td>
		</tr>
		<tr>
			<td><input type="submit" value="登录""></td>
			<td><input type="reset" value="重置""></td>
		</tr>
	</table>
	</form>
</body>
</html>