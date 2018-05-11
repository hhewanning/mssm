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
	table {font-family: 宋体; font-size: 11pt; border-color: rgb(78,78,78);  width: 60%;}
	#th {background: rgb(78,78,78);}
</style>
  </head>
  
  <body>
  	 <form action="${pageContext.request.contextPath }/bookServlet" method="post">
  <input type="hidden" name="method" value="findByCount">
  
    	设置缺省值:<input type="text" name="count">
    	<input type="submit" value="查询">
  </form>
    <table align="center" border="1" cellpadding="0" cellspacing="0">
    	<tr id="th" bordercolor="rgb(78,78,78)" align="center">
    		<th>图书名称</th>
    		<th>图书数量</th>
    	</tr>
    	<c:forEach items="${list }" var="book">
    	<tr bordercolor="rgb(78,78,78)" align="center">
    		<td>${book.bname}</td>
    		<td>${book.count }</td>
    	</tr>

    	</c:forEach>
    </table>
  </body>
</html>
