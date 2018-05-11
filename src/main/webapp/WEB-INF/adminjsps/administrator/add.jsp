<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>注册</title>
    
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
	body {background: rgb(254,238,189);}
	span{
	color:#f40000;
	border:0px solid #ffb8b8;
	display:inline-block;
	background-repeat: no-repeat;
}
</style>
  </head>
  <body>
<form action="${pageContext.request.contextPath}/adminServlet" method="post" target="body">

	<input type="hidden" name="method" value="regist"/>
	<table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">
    	<tr align="center">
    		<td colspan="2"> <h1>管理员账号注册</h1></td>
    	</tr>
    	<tr align="center">
    		<td width="17%">帐　号：</td>
    		<td width="23%" align="left"><input type="text" name="username" value=""/>
    		<span>${msg.username_msg }</span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>密　码：</td>
    		<td align="left"><input type="password" name="password"/>
    		<span>${msg.password_msg }</span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>姓　名：</td>
    		<td align="left"><input type="text" name="name" value=""/>
    		<span>${msg.name_msg }</span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>电　话：</td>
    		<td align="left"><input type="text" name="cellphone" value=""/>
    		<span>${msg.cellphone_msg }</span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td>邮　箱：</td>
    		<td align="left"><input type="text" name="email" value=""/>
    		<span>${msg.email_msg }</span>
    		</td>
    	</tr>
    	<tr align="center">
    		<td><input type="submit" value="注册"/></td>
    		<td><input type="reset" value="重置"/></td>
    	</tr>
		
    	</table>
    	
</form>
		
  </body>
</html>
