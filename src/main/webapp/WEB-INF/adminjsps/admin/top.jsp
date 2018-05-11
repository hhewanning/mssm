<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background: rgb(78,78,78);color: white;">
  <table align="center"><tr><td><font size="6"><b>图书管理系统</b></font><td></tr></table>
  <table align="left"><tr><td><font size="3"><b>&nbsp;&nbsp;管理员：${exisAdmin.name } &nbsp;|&nbsp;
		<a href="${pageContext.request.contextPath }/adminServlet?method=updateUI" target="_parent">修改密码</a>&nbsp;|&nbsp;
		<a href="${pageContext.request.contextPath }/adminServlet?method=outlog" target="_parent">安全退出</a></b></font><td></tr>
	</table>
	<!-- 传一个参数 -->
  </body>
</html>
