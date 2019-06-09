<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开始</title>
</head>
<body>
<form id="FormOfferName" name="FormOfferName" action="searchByName.jsp" method="POST">
	<h1>请输入你要查找的商品：</h1><br/>
	<input type="text" name="Name">
	<input type="submit" value="查找">
</form>
<hr/>
<form id="FormOfferKindNo" name="FormOfferKindNo" action="showByKindNo.jsp" method="post">
	<h1>列出该商品种类所有商品：</h1>
	<select name="choose">
		<option value="1">智能手机</option>
		<option value="2">平板电脑</option>
	</select>
	<input type="submit" value="查找">
</form>
<hr/>
<form id="FormInsert" name="FormInsert" action="InsertToDB.jsp">
	<table>
		<tr>
			<td>商品编号：</td>
			<td><input type="text" name="ID" ></td>
		</tr>
		<tr>
			<td>商品类型编号：</td>
			<td><input type="text" name="KindNo"></td>
		</tr>
		<tr>
			<td>商品名称：</td>
			<td><input type="text" name="Name"></td>
		</tr>
		<tr>
			<td>商品价格</td>
			<td><input type="text" name="Price"></td>
		</tr>
		<tr>
			<td><input type="submit" value="插入"></td>
			<td><input type="reset" value="重置"></td>
		</tr>
	</table>
</form>
<hr/>
<form>
	<p>要查看全部？</p>
	<input type="button" name="showAll" value="点击查看" onclick="location.href='showAll.jsp'"/>
</form>
</body>
</html>