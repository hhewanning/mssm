<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>管理员登录页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <form action="${pageContext.request.contextPath }/adminServlet" method="post">
	<input type="hidden" name="method" value="login">
  <table width="42%" height="40%"  background="${pageContext.request.contextPath }/images/index.jpg" align="center">
  	<tr height="35%">
  	<td width="18%">&nbsp;</td>
  	<td width="24%">&nbsp;</td>
  	</tr>
  	<tr>
  		<td align="right">管理员账号:</td>
  		<td><input type="text" name="username" value=""/></td>
  	</tr>
  	<tr>
  		<td align="right">密　　　码：</td>
  		<td><input type="password" name="password"/></td>
  	</tr>
  	<tr>
  		<td align="right"><input type="submit" value="登录"/>&nbsp;&nbsp;&nbsp;</td>
  		<td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="重置"></td>
  	</tr>
  	<tr>
  		<td colspan="2" align="center">
  		<p style="font-weight: 900; color: red">${msg }&nbsp;</p>
  		</td>
  	</tr>
  	
  </table>
	
</form>
  </body>
</html>
