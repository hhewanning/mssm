<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>密码修改</title>
    
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
<p style="color: red; font-weight: 900">${msg }</p>
<form action="${pageContext.request.contextPath}/userServlet" method="post" target="body">
	<input type="hidden" name="method" value="updateUser"/>
	<input type="hidden" name="state" value="${user.state }"/>
	
<table align="center" border="1" cellpadding="0" cellspacing="0" width="40%">
    	<tr align="center">
    		<td colspan="2"> <h1>会员资料修改</h1></td>
    	</tr>
    	<tr align="center">
    		<td width="20%">卡　号：</td>
    		<td width="20%" align="left"><input type="text" name="uid" value="${user.uid }" disabled="disabled"></td>
    	</tr>
    	<tr align="center">
    		<td width="20%">等　级：</td>
    		<td width="20%" align="left"><select name="type">
				<option value="">-请选择-</option>
				<option value="普通会员" <c:if test="${user.type=='普通会员' }">selected</c:if>>普通会员</option>
				<option value="黄金会员" <c:if test="${user.type=='黄金会员' }">selected</c:if>>黄金会员</option>
				<option value="白金会员" <c:if test="${user.type=='白金会员' }">selected</c:if>>白金会员</option>
				<option value="钻石会员" <c:if test="${user.type=='钻石会员' }">selected</c:if>>钻石会员</option>
		</select></td>
    	</tr>
    	<tr align="center">
    		<td width="20%">姓　名：</td>
    		<td width="20%" align="left"><input type="text" name="name" value="${user.name }"/></td>
    	</tr>
    	<tr align="center">
    		<td>性　别：</td>
    		<td align="left">
			    <input type="radio" name="gender" value="男" <c:if test="${user.gender=='男' }">checked</c:if>>男
				<input type="radio" name="gender" value="女" <c:if test="${user.gender=='女' }">checked</c:if>>女
			</td>
    	</tr>
    	<tr align="center">
    		<td>年　龄：</td>
    		<td align="left"><input type="text" name="birthday" value="${user.birthday }"/></td>
    	</tr>
    	<tr align="center">
    		<td>电　话：</td>
    		<td align="left"><input type="text" name="cellphone" value="${user.cellphone }"/></td>
    	</tr>
    	<tr align="center">
    		<td>邮　箱：</td>
    		<td align="left"><input type="text" name="email" value="${user.email }"/></td>
    	</tr>
    	<tr align="center">
    		<td>地　址：</td>
    		<td align="left"><textarea name="address" rows="6" cols="28">${user.address }</textarea></td>
    	</tr>
    	
    	<tr align="center">
    		<td colspan="2"> <input type="submit" value="确认修改"/></td>
    	</tr>
   </table>
</form>


  </body>
</html>
