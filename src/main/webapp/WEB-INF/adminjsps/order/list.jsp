<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>订单列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	* {
		font-size: 11pt;
	}
	div {
		border: solid 2px rgb(78,78,78);
		width: 75px;
		height: 75px;
		text-align: center;
	}
	li {
		margin: 10px;
	}
</style>
  </head>
  
  <body style="background: rgb(254,238,189);">
<h1>借阅信息</h1>

<table border="1" width="100%" cellspacing="0" background="black">
	<tr bgcolor="rgb(78,78,78)" bordercolor="rgb(78,78,78)" style="color: white;" align="center">
		<td>卡号</td>
		<td>级别</td>
		<td>名称</td>
		<td>书名</td>
		<td>单价</td>
		<td>日租价</td>
		<td>数量</td>
		<td>借阅时间</td>
		<td>借阅时限</td>
		<td>超期天数</td>
		<td>小计</td>
		<td>操作</td>
	</tr>
	<c:forEach items="${list }" var="order">
	<tr bordercolor="rgb(78,78,78)" align="center">
		
		<td>${order.user.uid }</td>
		<td>${order.user.type }</td>
		<td>${order.user.name }</td>
		<td>${order.book.bname }</td>
		<td>${order.book.price }</td>
		<td>${order.book.dayprice }</td>
		<td>${order.count }</td>
		<td>${order.borrowDate }</td>
		<td>${order.planDateString }</td>
		
		<td><c:if test="${not empty order.overDate }"><font color="red">超期${order.overDate }天</font></c:if>
		<c:if test="${empty order.overDate }">未超期</c:if>
		</td>
		<td><font color="red">${order.subtotal }元</font></td>
		<td><a href="${pageContext.request.contextPath }/orderServlet?method=returnBook&oid=${order.oid }&bid=${order.book.bid }&uid=${order.user.uid }">&nbsp;归还&nbsp;</a></td>
	</tr>
	</c:forEach>

</table>
  </body>
</html>
