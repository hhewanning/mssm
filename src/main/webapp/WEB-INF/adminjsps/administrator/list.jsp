<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>分类列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {background: rgb(254,238,189);}
	table {font-family: 宋体; font-size: 11pt; border-color: rgb(78,78,78);  width: 78%;}
	#th {background: rgb(78,78,78);}
</style>
  </head>
  
  <body>
    <h2 style="text-align: center;">管理员列表</h2>
    <table align="center" border="1" cellpadding="0" cellspacing="0">
    	<tr id="th" bordercolor="rgb(78,78,78)">
    		<th width="16%">管理员账号</th>
    		<th width="16%">管理员姓名</th>
    		<th width="18%">电话</th>
    		<th width="22%">邮箱</th>
    		<th width="14%">操作</th>
    	</tr>
    	<c:forEach items="${list }" var="admin">
    	<tr bordercolor="rgb(78,78,78)" align="center">
    		<td>${admin.username }</td>
    		<td>${admin.name }</td>
    		<td>${admin.cellphone }</td>
    		<td>${admin.email }</td>
    		<td>
    		<c:if test="${admin.state==0 }">
    		  <a href="${pageContext.request.contextPath }/adminServlet?method=stop&aid=${admin.aid}" target="body">暂停</a> |
    		  <a href="${pageContext.request.contextPath }/adminServlet?method=updateUII&aid=${admin.aid}" target="body">修改</a> |
    		  <a href="${pageContext.request.contextPath }/adminServlet?method=delete&aid=${admin.aid}" target="body">删除</a>
    		 </c:if>
    		<c:if test="${admin.state==1 }">
    		  <a href="${pageContext.request.contextPath }/adminServlet?method=upAdmin&aid=${admin.aid}" target="body">启用</a> |
    		  修改 |删除
    		 </c:if>
    		 
    		</td>
    	</tr>
    	</c:forEach>
    </table>
  </body>
</html>
