<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>添加分类</title>
    
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
</style>
  </head>
  
  <body>
    <form action="${pageContext.request.contextPath}/category/saveCategory" method="post">
    	 <table align="center" width="40%">
    	<tr align="center"><td width="40%"><h1>添加分类</h1></td>
    	<tr align="center"><td>分类名称：<input type="text" name="cname"/><p style="font-weight: 900; color: red">${msg }</p>
    	<input type="submit" value="添加分类"/></td>
    </table>
    </form>
  </body>
</html>
