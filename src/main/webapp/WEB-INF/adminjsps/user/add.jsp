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
  
<form action="${pageContext.request.contextPath}/userServlet" method="post" target="body">
	<input type="hidden" name="method" value="regist"/>
	<table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">
    	<tr align="center">
    		<td colspan="2"> <h1>添加会员</h1></td>
    	</tr>
    	<tr align="center">
    		<td width="17%">等　级：</td>
    		<td width="23%" align="left"><select name="type">
				<option value="">-请选择-</option>
				<option value="普通会员">普通会员</option>
				<option value="黄金会员">黄金会员</option>
				<option value="白金会员">白金会员</option>
				<option value="钻石会员">钻石会员</option>
		</select><span>${msg.type_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>姓　名：</td>
    		<td align="left"><input type="text" name="name" value=""/><span>${msg.name_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>性　别：</td>
    		<td align="left"><input type="radio" name="gender" value="男"
					checked="checked">男<input type="radio" name="gender"
					value="女">女</td>
    	</tr>
    	<tr align="center">
    		<td>年　龄：</td>
    		<td align="left"><input type="text" name="birthday" value=""/><span>${msg.birthday_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>电　话：</td>
    		<td align="left"><input type="text" name="cellphone" value=""/><span>${msg.cellphone_msg }</span></td>
    	</tr>
    	<tr align="center">
    		<td>邮　箱：</td>
    		<td align="left"><input type="text" name="email" value=""/> <span>${msg.email_msg }</span></td>
    	</tr>
    	
    	<tr align="center">
    		<td>地　址：</td>
    		<td align="left"><textarea name="address" rows="5" cols="28"></textarea><span>${msg.address_msg }</span></td>
    	</tr>
    	
    	<tr align="center">
    		<td colspan="2"> <input type="submit" value="注册"/></td>
    	</tr>
   </table>
</form>
 

  </body>
</html>
